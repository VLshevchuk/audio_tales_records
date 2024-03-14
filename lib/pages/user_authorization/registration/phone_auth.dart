import 'package:audio_tales_app/widgets_general/painter_all/painter_purple.dart';
import 'package:flutter/material.dart';
import 'package:audio_tales_app/Bloc/auth_event.dart';
import 'package:audio_tales_app/Bloc/auth_bloc.dart';
import 'package:audio_tales_app/pages/user_authorization/registration/with_empty_selection.dart';
import 'package:audio_tales_app/widgets_general/button_next.dart';

import 'package:flutter/services.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  late TextEditingController controller;

  final int requiredLength = 9;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  "Регистрация",
                  style: globals.AppTextStyles.headline,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 376.0,
          child: SizedBox(
            width: 411.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Введите номер телефона",
                  style: globals.AppTextStyles.bodyline.copyWith(
                    fontSize: 16.0,
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
                    bottom: 86.0,
                  ),
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
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 19.0,
                        horizontal: 70.0,
                      ),
                      prefix: Text(
                        "+380",
                      ),
                    ),
                    style: globals.AppTextStyles.bodyline.copyWith(
                      fontSize: 20.0,
                      color: const Color.fromRGBO(58, 58, 85, 1.0),
                    ),
                    controller: controller,
                    inputFormatters: [
                      // FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(
                        9,
                      ),
                    ],
                    onSubmitted: (
                      String value,
                    ) {},
                  ),
                ),
                ButtonNext(
                  textButton: 'Продолжить',
                  onPressed: () async {
                    if (controller.text.length == requiredLength) {
                      // sendSmsCode(
                      //   "+380${controller.text.toString()}",
                      // );
                      BlocProvider.of<AuthBloc>(context).add(
                        VerifyPhoneNumberEvent(
                          phoneNumber: "+380${controller.text.toString()}",
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 24.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WithEmptySelection(),
                      ),
                    );
                  },
                  child: Text(
                    'Позже',
                    style: globals.AppTextStyles.bodyline.copyWith(
                      fontSize: 24.0,
                      letterSpacing: 0.5,
                      color: const Color.fromRGBO(58, 58, 85, 1.0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 65.0,
                    right: 65.0,
                  ),
                  height: 104.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(
                      15.0,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 7.0,
                        color: Color.fromRGBO(0, 0, 0, 0.11),
                      ),
                    ],
                    color: const Color.fromRGBO(246, 246, 246, 1.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 21.0,
                      right: 21.0,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Регистрация привяжет твои сказки  к облаку, после чего они всегда будут с тобой',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
