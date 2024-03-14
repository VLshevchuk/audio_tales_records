import 'package:flutter/material.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class SearchAudioWidget extends StatelessWidget {
  const SearchAudioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Аудиозапись 1",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    color: const Color.fromRGBO(58, 58, 85, 1.0),
                  ),
                ),
                Text(
                  "30 минут",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    color: const Color.fromRGBO(58, 58, 85, 0.5),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 5.0,
              left: 136.0,
            ),
            child: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/svg_assets/image5.svg",
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
