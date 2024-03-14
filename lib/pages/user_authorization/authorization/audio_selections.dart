import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class AudioSelections extends StatelessWidget {
  const AudioSelections({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(140, 132, 226, 1.0),
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: const BottomNavigation(),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: CustomPaint(
                painter: MasterPainterPurple(),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 17.0,
                    right: 17.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 65.0,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/svg_assets/frame.svg",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Text(
                              "Подборки",
                              style: globals.AppTextStyles.bodyline.copyWith(
                                fontSize: 24.0,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                "Открыть все",
                                style:
                                    globals.AppTextStyles.bodyline.copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 240.0,
                                width: 183.0,
                                decoration: BoxDecoration(
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
                                  borderRadius: BorderRadius.circular(
                                    15.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/img_assets/image1.1.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 112.0,
                                width: 183.0,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(
                                        0,
                                        4.0,
                                      ),
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(
                                    15.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/img_assets/image2.png",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              Container(
                                height: 112.0,
                                width: 183.0,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(
                                        0,
                                        4.0,
                                      ),
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(
                                    15.0,
                                  ),
                                  color:
                                      const Color.fromRGBO(103, 139, 210, 1.0)
                                          .withOpacity(
                                    0.9,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    "assets/img_assets/image3.3.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 5.0,
              top: 460.0,
              child: Container(
                height: 345.0,
                width: 404.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(
                      25.0,
                    ),
                    topStart: Radius.circular(
                      25.0,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        0,
                        4.0,
                      ),
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      blurRadius: 24.0,
                    ),
                  ],
                  color: Color.fromRGBO(246, 246, 246, 1.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    left: 17.0,
                    right: 17.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Аудиозаписи",
                            style: globals.AppTextStyles.bodyline.copyWith(
                              fontSize: 24.0,
                              letterSpacing: 0.4,
                              color: const Color.fromRGBO(58, 58, 85, 1.0),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 9.0,
                              ),
                              child: Text(
                                'Открыть все',
                                style: globals.AppTextStyles.bodyline.copyWith(
                                  letterSpacing: 0.4,
                                  color: const Color.fromRGBO(58, 58, 85, 1.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 24.0,
                          ),
                          Container(
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
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    top: 12.0,
                                    right: 130.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Малышь Кокки 1",
                                        style: globals.AppTextStyles.bodyline
                                            .copyWith(
                                          color: const Color.fromRGBO(
                                              58, 58, 85, 1.0),
                                        ),
                                      ),
                                      Text(
                                        "30 минут",
                                        style: globals.AppTextStyles.bodyline
                                            .copyWith(
                                          color: const Color.fromRGBO(
                                              58, 58, 85, 0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/svg_assets/image5.svg",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
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
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20.0,
                                    top: 12.0,
                                    right: 130.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Малышь Кокки 1",
                                        style: globals.AppTextStyles.bodyline
                                            .copyWith(
                                          color: const Color.fromRGBO(
                                              58, 58, 85, 1.0),
                                        ),
                                      ),
                                      Text(
                                        "30 минут",
                                        style: globals.AppTextStyles.bodyline
                                            .copyWith(
                                          color: const Color.fromRGBO(
                                              58, 58, 85, 0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    "assets/svg_assets/image5.svg",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
