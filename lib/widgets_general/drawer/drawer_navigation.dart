import 'package:audio_tales_app/pages/delete_audio/delete_audio.dart';
import 'package:audio_tales_app/pages/search_audio/search_audio.dart';
import 'package:audio_tales_app/widgets_general/drawer/menu_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 30.0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
        color: Color.fromRGBO(246, 246, 246, 1),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
              top: 30.0,
            ),
            child: Column(
              children: [
                Text(
                  "Аудиосказки",
                  style: globals.AppTextStyles.headline.copyWith(
                    fontSize: 24.0,
                    letterSpacing: 0.4,
                    color: const Color.fromRGBO(58, 58, 85, 1),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Меню",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    fontSize: 22.0,
                    color: const Color.fromRGBO(58, 58, 85, 0.5),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                MenuRow(
                  svg: 'assets/svg_assets/home2.svg',
                  text: "Главная",
                  onPressed: () {},
                ),
                MenuRow(
                  svg: 'assets/svg_assets/profile.svg',
                  text: "Профиль",
                  onPressed: () {},
                ),
                MenuRow(
                  svg: 'assets/svg_assets/category.svg',
                  text: "Подборки",
                  onPressed: () {},
                ),
                MenuRow(
                  svg: 'assets/svg_assets/paper.svg',
                  text: "Все аудиофайлы",
                  onPressed: () {},
                ),
                MenuRow(
                  svg: 'assets/svg_assets/search.svg',
                  text: "Поиск",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchAudio(),
                      ),
                    );
                  },
                ),
                MenuRow(
                  svg: 'assets/svg_assets/delete.svg',
                  text: "Недавно удаленные",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeleteAudio(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 52.0,
                ),
                MenuRow(
                  svg: 'assets/svg_assets/wallet.svg',
                  text: "Подписка",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 52.0,
                ),
                MenuRow(
                  svg: 'assets/svg_assets/edit.svg',
                  text: "Написать в поддержку",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
