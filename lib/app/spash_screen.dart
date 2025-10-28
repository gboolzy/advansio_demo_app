import 'package:demo_app/app/signup_screen.dart';
import 'package:demo_app/util/widget/app_logo.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignupScreen()),
      );

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3c25B3),
      body: SizedBox(
        width: double.infinity,
        child: AppLogo(mainAxisAlignment: MainAxisAlignment.center,),
      ),
    );
  }
}


