import 'package:audio_tales_app/pages/collections/list_of_added_audio_files/widgets/add_audio_widget.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_small_green.dart';
import 'package:flutter/material.dart';
import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class ListOfAddedAudioFiles extends StatelessWidget {
  const ListOfAddedAudioFiles({super.key});

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
          categotyImageColor: Color.fromRGBO(95, 95, 117, 1),
          categoryTextColor: Color.fromRGBO(95, 95, 117, 1),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: CustomPaint(
                  painter: MasterSmallPainterGreen(),
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
                              "assets/svg_assets/frame2.svg",
                            ),
                          ),
                          Text(
                            "Выбрать",
                            style: globals.AppTextStyles.headline.copyWith(
                              fontSize: 36.0,
                              letterSpacing: 0.5,
                              color: const Color.fromRGBO(246, 246, 246, 1.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'Добавить',
                                style: globals.AppTextStyles.bodyline.copyWith(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80.0,
                    ),
                    Container(
                      height: 60,
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
                            blurRadius: 20.0,
                            color: Color.fromRGBO(0, 0, 0, 0.18),
                          ),
                        ],
                        color: const Color.fromRGBO(246, 246, 246, 1),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Поиск",
                          labelStyle: globals.AppTextStyles.bodyline.copyWith(
                            fontSize: 20.0,
                            color: const Color.fromRGBO(58, 58, 85, 0.5),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 29.0,
                            vertical: 19.0,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(
                              right: 15.0,
                            ),
                            child: SvgPicture.asset(
                              "assets/svg_assets/search2.svg",
                              fit: BoxFit.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 43.0,
                    ),
                    const AddAudioWidget(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const AddAudioWidget(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const AddAudioWidget(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const AddAudioWidget(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const AddAudioWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
