import 'package:flutter/material.dart';
import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:record/record.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audio_tales_app/utils/recorder.dart';
import 'package:flutter/foundation.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late AudioRecorder audioRecord;
  late AudioPlayer audioPlayer;
  bool _isRecoding = false;
  String audioPath = '';
//   // String streamSave;
//   //audioPath для хранения записей

//   @override
//   void initState() {
//     audioRecord = AudioRecorder();
//     audioPlayer = AudioPlayer();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     audioRecord.dispose();
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   Future<void> stopRecording() async {
//     try {
//       String? path = await audioRecord.stop();
//       print("stoop $_isRecoding");
// // await audioRecord.isRecording;

//       setState(() {
//         audioPath = path!;
//         _isRecoding = false;
//       });
//       print("stoop222 $_isRecoding");
//     } catch (e) {
//       print(
//         "error stoping record- $e",
//       );
//     }
//   }

  void startRecord() {
    setState(() {
      _isRecoding = true;
    });
  }

//   Future<void> playRecording() async {
//     try {
//       Source urlSource = UrlSource(audioPath);
//       await audioPlayer.play(urlSource);
//       //испл аудио с исходным путем
//     } catch (e) {
//       print(
//         "error playing recording - $e----",
//       );
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(140, 132, 226, 1.0),
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: Stack(
          clipBehavior: Clip.none,
          children: [
            BottomNavigation(
              startRecoding: startRecord,
            ),
            _isRecoding
                ? Positioned(
                    top: -30,
                    left: 195,
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 4.0,
                              height: 45.0,
                              color: const Color.fromRGBO(241, 180, 136, 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: CustomPaint(
                painter: MasterPainterPurple(),
              ),
            ),
            Positioned(
              left: 18.0,
              top: 78,
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/svg_assets/frame.svg",
                ),
              ),
            ),
            Positioned(
              top: 175.0,
              left: 5.0,
              child: Column(
                children: [
                  Container(
                    height: 685.0,
                    width: 404.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      color: const Color.fromRGBO(246, 246, 246, 1),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(
                            0.0,
                            4.0,
                          ),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 32.0,
                                  right: 29.0,
                                ),
                                child: Text(
                                  'Отменить',
                                  style:
                                      globals.AppTextStyles.bodyline.copyWith(
                                    fontSize: 16.0,
                                    color:
                                        const Color.fromRGBO(58, 58, 85, 1.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Text(
                            "Запись",
                            style: globals.AppTextStyles.bodyline.copyWith(
                              fontSize: 24.0,
                              letterSpacing: 0.4,
                              color: const Color.fromRGBO(58, 58, 85, 1.0),
                            ),
                          ),
                        ),
                        if (_isRecoding)
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 90.0,
                              left: 20.0,
                            ),
                            child: Recorder(
                              onStop: (path) {
                                if (kDebugMode) {
                                  setState(
                                    () {
                                      audioPath = path;
                                      _isRecoding = true;
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
