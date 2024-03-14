import 'package:audio_tales_app/pages/user_authorization/registration/registration.dart';
import 'package:audio_tales_app/widgets_general/button_next.dart';
import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class StartOfApplication extends StatelessWidget {
  const StartOfApplication({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(140, 132, 226, 1.0),
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor:const  Color.fromRGBO(246, 246, 246, 1.0),
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "MemoryBox",
                      style: globals.AppTextStyles.headline,
                    ),
                    Text(
                      "Твой голос всегда рядом",
                      style: globals.AppTextStyles.bodyline,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 395.0,
              child: SizedBox(
                width: 411.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Привет!",
                      style: globals.AppTextStyles.bodyline.copyWith(
                        fontSize: 24.0,
                        color: const Color.fromRGBO(58, 58, 85, 1.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 24.0,
                        left: 47.0,
                        right: 47.0,
                      ),
                      child: Text(
                        "Мы рады видеть тебя здесь.Это приложение поможет записывать сказки и держать их в удобном месте не заполняя память на телефоне",
                        textAlign: TextAlign.center,
                        style: globals.AppTextStyles.bodyline.copyWith(
                          fontSize: 16.0,
                          color: const Color.fromRGBO(58, 58, 85, 1.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 48.0,
                    ),
                    ButtonNext(
                      textButton: 'Продолжить',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  Registration(),
                          ),
                        );
                      },
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
