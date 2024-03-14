import 'package:audio_tales_app/widgets_general/bottom_navigation_bar.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({super.key});

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  final TextEditingController _controllerNumber = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override 
  void initState(){
    super.initState();
    _controllerNumber.addListener(() {

    });

  }

    @override
  void dispose() {
    // Важно очищать контроллер при удалении виджета
    _controllerNumber.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    String number = '(55) 478 74 96';
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(140, 132, 226, 1.0),
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        bottomNavigationBar: const BottomNavigation(),
        body: SingleChildScrollView(
          child: Stack(
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
                            top: 55.0,
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/svg_assets/frame.svg",
                                ),
                              ),
                              const SizedBox(
                                width: 75.0,
                              ),
                              Text(
                                "Профиль",
                                style: globals.AppTextStyles.headline.copyWith(
                                  fontSize: 36.0,
                                  letterSpacing: 0.5,
                                  color:
                                      const Color.fromRGBO(246, 246, 246, 1.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
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
                                height: 64.0,
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
                                  color:
                                      const Color.fromRGBO(246, 246, 246, 1.0),
                                ),
                                child: Center(
                                  // child: Text(
                                  //   "+380 (55) 478 74 96",
                                  //   textAlign: TextAlign.center,
                                  //   style:
                                  //       globals.AppTextStyles.bodyline.copyWith(
                                  //     fontSize: 20.0,
                                  //     color:
                                  //         const Color.fromRGBO(58, 58, 85, 1.0),
                                  //   ),
                                  // ),
                                  child: TextField(
                                    controller: _controllerNumber,
                                    focusNode: _focusNode,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly,],
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "+380$number",
                                      hintStyle: globals.AppTextStyles.bodyline
                                          .copyWith(
                                        fontSize: 20.0,
                                        color: const Color.fromRGBO(
                                            58, 58, 85, 1.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              InkWell(
                                onTap: () {
                            
                                 _focusNode.unfocus();
                                      setState(() {
                                   number=_controllerNumber.text;
                                   print("-------12$number");
                                 });
                                },
                                child: Text(
                                  'Редактировать',
                                  style:
                                      globals.AppTextStyles.bodyline.copyWith(
                                    color:
                                        const Color.fromRGBO(58, 58, 85, 1.0),
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
      ),
    );
  }
}
