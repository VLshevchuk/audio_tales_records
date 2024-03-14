import 'package:flutter/material.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class AudioTale extends StatelessWidget {
  final String? imageOne;
  final String? quantityAudio;
  final String? time;
  final String? nameAudio;
  const AudioTale({
    super.key,
    this.imageOne,
    this.quantityAudio,
    this.time,
    this.nameAudio,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
            boxShadow: const [
              BoxShadow(
                offset: Offset(
                  0,
                  4.0,
                ),
                blurRadius: 20.0,
                color: Color.fromRGBO(0, 0, 0, 0.25),
              ),
            ],
            color: const Color.fromRGBO(246, 246, 246, 1.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
            child: Stack(
              children: [
                Image.asset(
                  imageOne ?? "assets/img_assets/white_image.png",
                ),
                Positioned(
                  bottom: 16.0,
                  left: 13.0,
                  right: 13.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 87.0,
                        child: Column(
                          children: [
                            Text(
                              nameAudio ?? "",
                              style: globals.AppTextStyles.headline.copyWith(
                                fontSize: 16.0,
                                letterSpacing: 0.5,
                                color: const Color.fromRGBO(246, 246, 246, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              quantityAudio ?? '',
                              style: globals.AppTextStyles.bodyline.copyWith(
                                fontSize: 12.0,
                                color: const Color.fromRGBO(246, 246, 246, 1.0),
                              ),
                            ),
                            Text(
                              time ?? '',
                              style: globals.AppTextStyles.bodyline.copyWith(
                                fontSize: 12.0,
                                color: const Color.fromRGBO(246, 246, 246, 1.0),
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
        ),
      ],
    );
  }
}
