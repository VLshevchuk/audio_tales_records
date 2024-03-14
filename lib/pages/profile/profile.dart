import 'package:audio_tales_app/pages/profile/settings_profile.dart';
import 'package:audio_tales_app/widgets_general/drawer/drawer_navigation.dart';
import 'package:audio_tales_app/widgets_general/drawer/menu_row_widget.dart';
import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(140, 132, 226, 1.0),
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset(
              "assets/svg_assets/frame.svg",
              fit: BoxFit.none,
            ),
          ),
          backgroundColor: const Color.fromRGBO(140, 132, 226, 1),
          title: Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
            ),
            child: Text(
              'Профиль',
              style: globals.AppTextStyles.headline.copyWith(
                fontSize: 36.0,
                letterSpacing: 0.5,
                color: const Color.fromRGBO(246, 246, 246, 1.0),
              ),
            ),
          ),
        ),
        drawer: const Drawer(
          // backgroundColor: Colors.yellow,
          // surfaceTintColor: Colors.red,
          // shadowColor: Colors.red,
          child: DrawerNavigation(),
        ),
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: const BottomNavigation(),
        body: Stack(
          children: [
            CustomPaint(
              painter: MasterPainterPurple(),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 17.0,
                    right: 17.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Твоя частичка",
                        style: globals.AppTextStyles.bodyline.copyWith(
                          fontSize: 16.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          24.0,
                        ),
                        child: Image.asset(
                          "assets/img_assets/image6.2.png",
                        ),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Text(
                        "Коля",
                        style: globals.AppTextStyles.bodyline.copyWith(
                          fontSize: 24.0,
                          color: const Color.fromRGBO(58, 58, 85, 1.0),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 47.0,
                          right: 47.0,
                        ),
                        width: double.infinity,
                        height: 62.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            41.0,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(
                                0,
                                4.0,
                              ),
                              blurRadius: 11.0,
                              color: Color.fromRGBO(0, 0, 0, 0.17),
                            ),
                          ],
                          color: const Color.fromRGBO(246, 246, 246, 1.0),
                        ),
                        child: Center(
                          child: Text(
                            "+380 (55) 478 74 96",
                            textAlign: TextAlign.center,
                            style: globals.AppTextStyles.bodyline.copyWith(
                              fontSize: 20.0,
                              color: const Color.fromRGBO(58, 58, 85, 1.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingsProfile(),
                            ),
                          );
                        },
                        child: Text(
                          'Редактировать',
                          style: globals.AppTextStyles.bodyline.copyWith(
                            color: const Color.fromRGBO(58, 58, 85, 1.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Подписка',
                          style: globals.AppTextStyles.bodyline.copyWith(
                            color: const Color.fromRGBO(58, 58, 85, 1.0),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 23.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 56.0,
                          right: 56.0,
                        ),
                        width: double.infinity,
                        height: 24.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          border: const Border.fromBorderSide(
                            BorderSide(
                              width: 2.0,
                              color: Color.fromRGBO(58, 58, 85, 1.0),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 70.0,
                              height: 24.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    10.0,
                                  ),
                                  bottomLeft: Radius.circular(
                                    10.0,
                                  ),
                                ),
                                color: Color.fromRGBO(241, 180, 136, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "150/500 мб",
                        style: globals.AppTextStyles.bodyline.copyWith(
                          color: const Color.fromRGBO(58, 58, 85, 1.0),
                        ),
                      ),
                      const SizedBox(
                        height: 66.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 40.0,
                          right: 40.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Выйти из приложения",
                                style: globals.AppTextStyles.bodyline.copyWith(
                                  color: const Color.fromRGBO(58, 58, 85, 1.0),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Удалить аккаунт",
                                style: globals.AppTextStyles.bodyline.copyWith(
                                  color: const Color.fromRGBO(226, 119, 119, 1),
                                ),
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
          ],
        ),
      ),
    );
  }
}
