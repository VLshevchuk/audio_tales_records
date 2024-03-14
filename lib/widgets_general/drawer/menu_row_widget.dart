import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;

class MenuRow extends StatelessWidget {
  final String? svg;
  final String? text;
  final Function()? onPressed;
  const MenuRow({super.key, this.svg, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svg ?? "assets/svg_assets/home2.svg",
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text ?? '',
            style: globals.AppTextStyles.bodyline.copyWith(
              fontSize: 18.0,
              color: const Color.fromRGBO(58, 58, 85, 1),
            ),
          ),
        ),
      ],
    );
  }
}
