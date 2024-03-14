import 'package:flutter/material.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class ButtonNext extends StatelessWidget {
  final Color? colorBox;
  final String textButton;
  final Function() onPressed;
  const ButtonNext({
    super.key,
    this.colorBox,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 47.0,
        right: 47.0,
      ),
      width: double.maxFinite,
      height: 59.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          51.0,
        ),
        color: colorBox ?? const Color.fromRGBO(241, 180, 136, 1),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          textButton,
          style: globals.AppTextStyles.bodyline.copyWith(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
