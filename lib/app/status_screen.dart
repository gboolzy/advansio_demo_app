import 'package:demo_app/app/login_screen.dart';
import 'package:demo_app/util/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3c25B3),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 400,
                width: 300,
                child: Column(
                  children: [
                    SvgPicture.asset("assets/icons/success_icon.svg"),
                    SizedBox(height: 18),
                    Text(
                      'Account Created',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Your news account has been successfully created',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppButton(
              buttonText: 'Continue to feed',
              buttonHeight: 56,
              mainAxisAlignment: MainAxisAlignment.center,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
