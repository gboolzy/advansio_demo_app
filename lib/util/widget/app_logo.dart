import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const AppLogo({ required this.mainAxisAlignment, super.key, });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/icons/app_icon.svg"),
        Text(
          'News Core',
          style: const TextStyle(
            fontFamily: 'Satoshi',
            color: Color(0xFFFFFFFF),
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
