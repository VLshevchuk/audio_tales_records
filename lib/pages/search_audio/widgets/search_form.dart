import 'package:flutter/material.dart';
import 'package:audio_tales_app/path/to/globals.dart' as globals;
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          hintText: "Поиск",
          hintStyle: globals.AppTextStyles.bodyline.copyWith(
            fontSize: 20.0,
            color: const Color.fromRGBO(58, 58, 85, 0.5),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 29.0,
            vertical: 15.0,
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
    );
  }
}
