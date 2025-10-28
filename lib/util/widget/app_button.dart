import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final double buttonHeight;
  final MainAxisAlignment mainAxisAlignment;
  final void Function()? onPress;

  const AppButton({
    super.key,
    required this.buttonText,
    required this.buttonHeight,
    required this.mainAxisAlignment,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF071A27),
        foregroundColor: Colors.white,
        minimumSize:  Size(148, buttonHeight),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'Satoshi',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 7),
          SvgPicture.asset("assets/icons/arrow_fw.svg"),
        ],
      ),
    );
  }
}


class AppContainerButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPress;
  const AppContainerButton({
    super.key, required this.buttonText, this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 56,
          width: 148,
          decoration: BoxDecoration(
            color: Color(0xFF071A27),
            borderRadius:
            BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Text(
                buttonText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'satoshi',
                  fontWeight:
                  FontWeight.w500,
                ),
              ),
              SizedBox(width: 7),
              SvgPicture.asset(
                "assets/icons/arrow_fw.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class AppTextButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPress;
  final  AlignmentGeometry alignment;
  const AppTextButton({
    super.key, required this.buttonText, this.onPress, required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: alignment,
        child: GestureDetector(
          onTap: onPress,
          child:  Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'Satoshi',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}