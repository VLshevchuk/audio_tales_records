import 'package:audio_tales_app/pages/user_authorization/registration/with_empty_selection.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationSuccessful extends StatelessWidget {
  const RegistrationSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(140, 132, 226, 1.0),
        systemNavigationBarColor: Color.fromRGBO(246, 246, 246, 1.0),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1.0),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: CustomPaint(
                painter: MasterPainterPurple(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 157.0,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Ты супер!",
                      style: globals.AppTextStyles.headline,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 200.0,
                        left: 54.0,
                        right: 54.0,
                      ),
                      child: Container(
                        height: 80.0,
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
                              blurRadius: 7.0,
                              color: Color.fromRGBO(0, 0, 0, 0.11),
                            ),
                          ],
                          color: const Color.fromRGBO(246, 246, 246, 1.0),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const WithEmptySelection(),
                                ),
                              );
                            },
                            child: const Text(
                              "Мы рады тебя видеть",
                              style: TextStyle(
                                fontSize: 24.0,
                                letterSpacing: 1.0,
                                color: Color.fromRGBO(58, 58, 85, 1.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 51.0,
                    ),
                    SvgPicture.asset(
                      "assets/svg_assets/heart.svg",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
