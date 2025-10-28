import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xFFF3F6F8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/google.svg"),
                SizedBox(width: 8,),
                Text(
                  'Google',
                  style: const TextStyle(
                    fontFamily: 'Satoshi',
                    color: Color(0xFF071A27),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

          ),
        ),
        SizedBox( width: 15,),
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xFFF3F6F8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/facebook.svg"),
                SizedBox(width: 8,),
                Text(
                  'Facebook',
                  style: const TextStyle(
                    fontFamily: 'Satoshi',
                    color: Color(0xFF071A27),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
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