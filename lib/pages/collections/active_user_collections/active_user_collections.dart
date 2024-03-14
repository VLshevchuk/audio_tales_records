import 'package:audio_tales_app/pages/collections/active_user_collections/widgets/audio_tale.dart';
import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_green.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class ActiveUserCollection extends StatelessWidget {
  const ActiveUserCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(113, 165, 159, 1),
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: const BottomNavigation(
          categotyImageColor: Color.fromRGBO(140, 132, 226, 1),
          categoryTextColor: Color.fromRGBO(140, 132, 226, 1),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: CustomPaint(
                  painter: MasterPainterGreen(),
                ),
              ),
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
                        top: 55.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/svg_assets/plus.svg",
                            ),
                          ),
                          Text(
                            "Подборки",
                            style: globals.AppTextStyles.headline.copyWith(
                              fontSize: 36.0,
                              letterSpacing: 0.5,
                              color: const Color.fromRGBO(246, 246, 246, 1.0),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/svg_assets/three_points.svg",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        "Все в одном месте",
                        style: globals.AppTextStyles.bodyline.copyWith(
                          fontSize: 16.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 173.0,
                  left: 16.0,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        AudioTale(
                          imageOne: "assets/img_assets/image1.1.png",
                          nameAudio: "Сказка о малыше Кокки",
                          quantityAudio: "7 аудио",
                          time: "2:30 часа",
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        AudioTale(
                          imageOne: "assets/img_assets/group6906.png",
                          nameAudio: "Сказка о Иванушке",
                          quantityAudio: "5 аудио",
                          time: "1:30 часа",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        AudioTale(
                          imageOne: "assets/img_assets/rectangle.png",
                          nameAudio: "Золотая рыбка",
                          quantityAudio: "11 аудио",
                          time: "3:30 часа",
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        AudioTale(
                          imageOne: "assets/img_assets/rectangle2.png",
                          nameAudio: "Конек горбунек",
                          quantityAudio: "7 аудио",
                          time: "3:33 часа",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        AudioTale(
                          imageOne: "assets/img_assets/image1.1.png",
                          nameAudio: "Сказка о малыше Кокки",
                          quantityAudio: "7 аудио",
                          time: "2:30 часа",
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        AudioTale(
                          imageOne: "assets/img_assets/group6906.png",
                          nameAudio: "Сказка о Иванушке",
                          quantityAudio: "5 аудио",
                          time: "1:30 часа",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: [
                        AudioTale(
                          imageOne: "assets/img_assets/image1.1.png",
                          nameAudio: "Сказка о малыше Кокки",
                          quantityAudio: "7 аудио",
                          time: "2:30 часа",
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        AudioTale(
                          imageOne: "assets/img_assets/group6906.png",
                          nameAudio: "Сказка о Иванушке",
                          quantityAudio: "5 аудио",
                          time: "1:30 часа",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
