import 'package:audio_tales_app/pages/profile/profile.dart';
import 'package:audio_tales_app/pages/user_authorization/authorization/audio_selections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class BottomNavigation extends StatelessWidget {
  final Color? homeImageColor;
  final Color? homeTextColor;
  final Color? categotyImageColor;
  final Color? categoryTextColor;
  final Color? paperImageColor;
  final Color? paperTextColor;
  final Color? profileImageColor;
  final Color? profileTextColor;
  final void Function()? startRecoding;
  const BottomNavigation({
    super.key,
    this.startRecoding,
    this.homeImageColor,
    this.homeTextColor,
    this.categotyImageColor,
    this.categoryTextColor,
    this.paperImageColor,
    this.paperTextColor,
    this.profileImageColor,
    this.profileTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(
            20.0,
          ),
          topEnd: Radius.circular(
            20.0,
          ),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 22.0,
          right: 22.0,
          top: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AudioSelections(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/svg_assets/home.svg",
                    colorFilter: ColorFilter.mode(
                      homeImageColor ?? const Color.fromRGBO(58, 58, 85, 0.8),
                      BlendMode.srcATop,
                    ),
                  ),
                ),
                Text(
                  "Главная",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    fontSize: 10.0,
                    color:
                        homeTextColor ?? const Color.fromRGBO(58, 58, 85, 0.8),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/svg_assets/category.svg",
                    colorFilter: ColorFilter.mode(
                      categotyImageColor ??
                          const Color.fromRGBO(58, 58, 85, 0.8),
                      BlendMode.srcATop,
                    ),
                  ),
                ),
                Text(
                  "Подборки",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    fontSize: 10.0,
                    color: categoryTextColor ??
                        const Color.fromRGBO(58, 58, 85, 0.8),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    color: const Color.fromRGBO(241, 180, 136, 1.0),
                  ),
                  child: IconButton(
                    onPressed: () {
                      if(startRecoding !=null) startRecoding!();
                    },
                    icon: SvgPicture.asset(
                      "assets/svg_assets/voice.svg",
                    ),
                  ),
                ),
                Text(
                  "Запись",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    fontSize: 10.0,
                    color: const Color.fromRGBO(241, 180, 136, 1.0),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/svg_assets/paper.svg",
                    colorFilter: ColorFilter.mode(
                      paperImageColor ?? const Color.fromRGBO(58, 58, 85, 0.8),
                      BlendMode.srcATop,
                    ),
                  ),
                ),
                Text(
                  "Аудиозаписи",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    fontSize: 10.0,
                    color:
                        paperTextColor ?? const Color.fromRGBO(58, 58, 85, 0.8),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profile(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/svg_assets/profile.svg",
                    colorFilter: ColorFilter.mode(
                      profileImageColor ??
                          const Color.fromRGBO(58, 58, 85, 0.8),
                      BlendMode.srcATop,
                    ),
                  ),
                ),
                Text(
                  "Профиль",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    fontSize: 10.0,
                    color: profileTextColor ??
                        const Color.fromRGBO(58, 58, 85, 0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
