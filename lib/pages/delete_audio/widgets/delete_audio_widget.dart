import 'package:flutter/material.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class DeleteAudioWidget extends StatefulWidget {
  final String? name;
  final String? time;
  final Function()? onPressed;
  final bool selectBool;
  final ValueChanged<bool> onChanged;
  DeleteAudioWidget({
    super.key,
    this.name,
    this.time,
    this.onPressed,
    this.selectBool = true,
    required this.onChanged,
  });

  @override
  State<DeleteAudioWidget> createState() => _DeleteAudioWidgetState();
}

class _DeleteAudioWidgetState extends State<DeleteAudioWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.selectBool == true
        ? Container(
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                41.0,
              ),
              border: Border.all(
                width: 1.0,
                color: const Color.fromRGBO(58, 58, 85, 0.2),
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svg_assets/play.svg",
                  colorFilter: const ColorFilter.mode(
                    Color.fromRGBO(103, 139, 210, 1),
                    BlendMode.srcATop,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 12.0,
                  ),
                  child: SizedBox(
                    width: 247,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name ?? "Аудиозапись 1",
                            style: globals.AppTextStyles.bodyline.copyWith(
                              color: const Color.fromRGBO(58, 58, 85, 1.0),
                            ),
                          ),
                          Text(
                            widget.time ?? "30 минут",
                            style: globals.AppTextStyles.bodyline.copyWith(
                              color: const Color.fromRGBO(58, 58, 85, 0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.onChanged(!widget.selectBool);
                    });
                  },
                  icon: SvgPicture.asset(
                    "assets/svg_assets/delete.svg",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ))
        : const SizedBox();
  }
}
