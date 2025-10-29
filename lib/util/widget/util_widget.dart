import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AppNotification extends StatelessWidget {
  final bool isActive;
  const AppNotification({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/notification.svg"),
        isActive? Positioned(
          top: 1,
          right: 1,
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFEA4335),
            ),
          ),
        ): SizedBox(
          height: 8,
          width: 8,
        ),
      ],
    );
  }
}