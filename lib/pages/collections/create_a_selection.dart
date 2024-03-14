import 'package:audio_tales_app/pages/collections/list_of_added_audio_files/list_of_added_audio_files.dart';
import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_green.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class CreateASelection extends StatefulWidget {
  const CreateASelection({super.key});

  @override
  State<CreateASelection> createState() => _CreateASelectionState();
}

class _CreateASelectionState extends State<CreateASelection> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

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
                              "assets/svg_assets/frame2.svg",
                            ),
                          ),
                          Text(
                            "Создание",
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
                                'Готово',
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
                      height: 24.0,
                    ),
                    Text(
                      "Название",
                      style: globals.AppTextStyles.headline.copyWith(
                        fontSize: 24,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 193.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 240.0,
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
                        color: const Color.fromRGBO(246, 246, 246, 0.9),
                      ),
                      child: Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              100.0,
                            ),
                            border: Border.all(
                              width: 1.5,
                              color: const Color.fromRGBO(58, 58, 85, 0.8),
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "assets/svg_assets/camera.svg",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12.0,
                          top: 20.0,
                          bottom: 30.0,
                        ),
                        child: Text(
                          "Введите описание...",
                        ),
                      ),
                    ),
                    TextField(
                      focusNode: _focusNode,
                      minLines: 1,
                      maxLines: 3,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          _focusNode.unfocus();
                        },
                        child: Text(
                          'Готово',
                          style: globals.AppTextStyles.bodyline.copyWith(
                            fontSize: 16.0,
                            color: const Color.fromRGBO(97, 97, 119, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>const ListOfAddedAudioFiles(),
                          ),
                        );
                      },
                      child: Text(
                        'Добавить аудифайл',
                        style: globals.AppTextStyles.bodyline.copyWith(
                          decoration: TextDecoration.underline,
                          color: const Color.fromRGBO(58, 58, 85, 0.8),
                        ),
                      ),
                    ),
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
