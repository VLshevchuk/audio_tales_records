import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/drawer/drawer_navigation.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class PaymentViaApplePay extends StatelessWidget {
  const PaymentViaApplePay({super.key});
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
          backgroundColor: const Color.fromRGBO(140, 132, 226, 1.0),
          title: Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Подписка',
                  style: globals.AppTextStyles.headline.copyWith(
                    fontSize: 36.0,
                    letterSpacing: 0.5,
                    color: const Color.fromRGBO(246, 246, 246, 1.0),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: const Drawer(
          child: DrawerNavigation(),
        ),
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: const BottomNavigation(
          homeImageColor: Color.fromRGBO(140, 132, 226, 1),
          homeTextColor: Color.fromRGBO(140, 132, 226, 1),
        ),
        body: Stack(
          children: [
            CustomPaint(
              painter: MasterPainterPurple(),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Разширить возможности',
                    style: globals.AppTextStyles.headline.copyWith(
                      fontSize: 16.0,
                      letterSpacing: 0.5,
                      color: const Color.fromRGBO(246, 246, 246, 1.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 46.0,
                      left: 5.0,
                      right: 5.0,
                    ),
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
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 34.0,
                              ),
                              Text(
                                "Выберите подписку",
                                style: globals.AppTextStyles.bodyline.copyWith(
                                  fontSize: 24.0,
                                  letterSpacing: 0.4,
                                  color: const Color.fromRGBO(58, 58, 85, 1.0),
                                ),
                              ),
                              const SizedBox(
                                height: 34.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 9.0,
                                    ),
                                    height: 240.0,
                                    width: 183.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        25.0,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          offset: Offset(
                                            0,
                                            4.0,
                                          ),
                                          blurRadius: 20.0,
                                          color: Color.fromRGBO(0, 0, 0, 0.1),
                                        ),
                                      ],
                                      color: const Color.fromRGBO(
                                          246, 246, 246, 1),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '300грн',
                                          style: globals.AppTextStyles.bodyline
                                              .copyWith(
                                            fontSize: 24.0,
                                            color: const Color.fromRGBO(
                                                58, 58, 85, 1),
                                          ),
                                        ),
                                        Text(
                                          'в месяц',
                                          style: globals.AppTextStyles.bodyline
                                              .copyWith(
                                            fontSize: 16.0,
                                            color: const Color.fromRGBO(
                                                58, 58, 85, 1),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/svg_assets/group6911.svg",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      right: 9.0,
                                    ),
                                    height: 240.0,
                                    width: 183.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        25.0,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          offset: Offset(
                                            0,
                                            4.0,
                                          ),
                                          blurRadius: 20.0,
                                          color: Color.fromRGBO(0, 0, 0, 0.1),
                                        ),
                                      ],
                                      color: const Color.fromRGBO(
                                          246, 246, 246, 1),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '1800грн',
                                            style: globals
                                                .AppTextStyles.bodyline
                                                .copyWith(
                                              fontSize: 24.0,
                                              color: const Color.fromRGBO(
                                                  58, 58, 85, 1),
                                            ),
                                          ),
                                          Text(
                                            'в год',
                                            style: globals
                                                .AppTextStyles.bodyline
                                                .copyWith(
                                              fontSize: 24.0,
                                              color: const Color.fromRGBO(
                                                  58, 58, 85, 1),
                                            ),
                                          ),
                                          SvgPicture.asset(
                                            "assets/svg_assets/group6911.svg",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 21.0,
                                  left: 54.0,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Что дает подписка",
                                          style: globals.AppTextStyles.bodyline
                                              .copyWith(
                                            fontSize: 20.0,
                                            color: const Color.fromRGBO(
                                                58, 58, 85, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 37.0,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg_assets/vector.svg",
                                        ),
                                        const SizedBox(
                                          width: 11.0,
                                        ),
                                        Text(
                                          "Неограниченная память",
                                          style: globals.AppTextStyles.bodyline
                                              .copyWith(
                                            color: const Color.fromRGBO(
                                                58, 58, 85, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg_assets/cil_cloud-upload.svg",
                                        ),
                                        const SizedBox(
                                          width: 11.0,
                                        ),
                                        Text(
                                          "Все файлы храняться в облаке",
                                          style: globals.AppTextStyles.bodyline
                                              .copyWith(
                                            color: const Color.fromRGBO(
                                                58, 58, 85, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/svg_assets/paperdownload.svg",
                                        ),
                                        const SizedBox(
                                          width: 11.0,
                                        ),
                                        Text(
                                          "Возможность скачивать без ограничений",
                                          style: globals.AppTextStyles.bodyline
                                              .copyWith(
                                            color: const Color.fromRGBO(
                                                58, 58, 85, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 36.0,
                              ),
                              Container(
                                width: 303.0,
                                height: 59.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    51.0,
                                  ),
                                  color: const Color.fromRGBO(241, 180, 136, 1),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Подписаться на месяц',
                                    style:
                                        globals.AppTextStyles.bodyline.copyWith(
                                      fontSize: 18.0,
                                      letterSpacing: 0.1,
                                      color: const Color.fromRGBO(
                                          246, 246, 246, 1),
                                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
