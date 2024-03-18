import 'dart:async';
import 'package:audio_tales_app/utils/audio_recorder_io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class AmplitudePainter extends CustomPainter {
  final List<double> amplitudeList;
  final double line;

  AmplitudePainter(
    this.amplitudeList,
    this.line,
  );

  @override
  void paint(Canvas canvas, Size size) {
    final double lineWidth = size.width / amplitudeList.length;
    final double halfHeight = size.height / 2;
    final Paint paint = Paint()..color = Colors.blue;

    for (int i = 0; i < amplitudeList.length; i++) {
      final double amplitude = amplitudeList[i];
      if (amplitude > 0) {
        final double lineX = lineWidth * i + lineWidth / 2;
        final double lineHeight = (halfHeight * amplitude / 100.0);
        final Offset start = Offset(
          lineX,
          halfHeight - lineHeight,
        );
        final Offset end = Offset(
          lineX,
          halfHeight + lineHeight,
        );
        canvas.drawLine(
          start,
          end,
          paint,
        );
      }
    }

    Paint secondPaint = Paint()..color = const Color.fromRGBO(58, 58, 85, 1);
    Offset startline = const Offset(0, 70 / 2);
    final Offset endline = Offset(line, 70 / 2);
    canvas.drawLine(
      startline,
      endline,
      secondPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Recorder extends StatefulWidget {
  final void Function(String path) onStop;

  const Recorder({
    super.key,
    required this.onStop,
  });

  @override
  State<Recorder> createState() => _RecorderState();
}

class _RecorderState extends State<Recorder> with AudioRecorderMixin {
  int _recordDuration = 0;
  Timer? _timer;
  late final AudioRecorder _audioRecorder;
  StreamSubscription<RecordState>? _recordSub;
  RecordState _recordState = RecordState.stop;
  StreamSubscription<Amplitude>? _amplitudeSub;
  Amplitude? _amplitude;
  late final List<double> _amplitudeList = [];

  @override
  void initState() {
    _start();
    _audioRecorder = AudioRecorder();

    _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
      _updateRecordState(recordState);
    });

    _amplitudeSub = _audioRecorder
        .onAmplitudeChanged(
      const Duration(
        milliseconds: 300,
      ),
    )
        .listen((amp) {
      setState(() {
        _amplitude = amp;
      });
    });

    super.initState();
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        const encoder = AudioEncoder.aacLc;

        if (!await _isEncoderSupported(encoder)) {
          return;
        }

        final devs = await _audioRecorder.listInputDevices();
        debugPrint(devs.toString());

        const config = RecordConfig(encoder: encoder, numChannels: 1);

        await recordFile(_audioRecorder, config);

        _recordDuration = 0;

        _startTimer();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _stop() async {
    final path = await _audioRecorder.stop();

    if (path != null) {
      widget.onStop(path);

      downloadWebData(path);
    }
  }

  Future<void> _pause() => _audioRecorder.pause();

  Future<void> _resume() => _audioRecorder.resume();

  void _updateRecordState(RecordState recordState) {
    setState(() => _recordState = recordState);

    switch (recordState) {
      case RecordState.pause:
        _timer?.cancel();
        break;
      case RecordState.record:
        _startTimer();
        break;
      case RecordState.stop:
        _timer?.cancel();
        _recordDuration = 0;
        break;
    }
  }

  Future<bool> _isEncoderSupported(AudioEncoder encoder) async {
    final isSupported = await _audioRecorder.isEncoderSupported(
      encoder,
    );

    if (!isSupported) {
      debugPrint('${encoder.name} is not supported on this platform.');
      debugPrint('Supported encoders are:');

      for (final e in AudioEncoder.values) {
        if (await _audioRecorder.isEncoderSupported(e)) {
          debugPrint('- ${encoder.name}');
        }
      }
    }

    return isSupported;
  }

  @override
  void setState(VoidCallback fn) {
    if (_amplitude != null) {
      _amplitudeList.add(_amplitude!.current.toDouble().abs());
    }
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (_amplitude != null) ...[
          const SizedBox(
            height: 40.0,
          ),
          Text('Current: ${_amplitude?.current ?? 0.0}'),
          Text('Max: ${_amplitude?.max ?? 0.0}'),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 100.0,
              left: 80.0,
            ),
            child: Container(
              width: double.infinity,
              height: 70.0,
              color: const Color.fromRGBO(246, 246, 246, 1.0),
              child: CustomPaint(
                painter: AmplitudePainter(
                  _amplitudeList,
                  300.0,
                ),
              ),
            ),
          ),
        ],
        _buildText(),
        Padding(
          padding: const EdgeInsets.only(
            right: 40.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildRecordStopControl(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _recordSub?.cancel();
    _amplitudeSub?.cancel();
    _audioRecorder.dispose();
    super.dispose();
  }

  Widget _buildRecordStopControl() {
    late Icon icon;
    if (_recordState != RecordState.stop) {
      icon = const Icon(
        Icons.pause,
        color: Colors.white,
        size: 50.0,
      );
    } else {
      icon = const Icon(
        Icons.play_arrow,
        color: Colors.white,
        size: 50.0,
      );
    }

    return Padding(
      padding: const EdgeInsets.only(
        top: 60.0,
      ),
      child: ClipOval(
        child: Material(
          color: const Color.fromRGBO(241, 180, 136, 1),
          child: InkWell(
            child: SizedBox(
              width: 80.0,
              height: 80.0,
              child: icon,
            ),
            onTap: () {
              (_recordState != RecordState.stop) ? _stop() : _start();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    if (_recordState != RecordState.stop) {
      return _buildTimer();
    }

    return const Text("Waiting to record");
  }

  Widget _buildTimer() {
    final String minutes = _formatNumber(_recordDuration ~/ 60);
    final String seconds = _formatNumber(_recordDuration % 60);

    return Padding(
      padding: const EdgeInsets.only(
        right: 40.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ClipOval(
            child: Material(
              color: Color.fromRGBO(226, 119, 119, 1),
              child: SizedBox(
                width: 10.0,
                height: 10.0,
              ),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            '$minutes : $seconds',
            style: globals.AppTextStyles.bodyline.copyWith(
              fontSize: 18.0,
              color: const Color.fromRGBO(58, 58, 85, 1),
            ),
          ),
        ],
      ),
    );
  }

  String _formatNumber(int number) {
    String numberStr = number.toString();
    if (number < 10) {
      numberStr = '0$numberStr';
    }

    return numberStr;
  }

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }
}
