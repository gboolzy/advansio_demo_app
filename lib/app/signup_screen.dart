import 'package:demo_app/app/login_screen.dart';
import 'package:demo_app/app/status_screen.dart';
import 'package:demo_app/util/widget/app_button.dart';
import 'package:demo_app/util/widget/app_logo.dart';
import 'package:demo_app/util/widget/social_media.dart';
import 'package:demo_app/util/widget/user_input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3c25B3),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: AppLogo(mainAxisAlignment: MainAxisAlignment.center),
                ),
                Expanded(child: Container(),),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Opacity(
                        opacity: 0.08,
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(
                              40,
                            ), // <-- Rounded corners
                          ),
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Opacity(
                            opacity: 0.08,
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(
                                  40,
                                ), // <-- Rounded corners
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(
                                40,
                              ), // <-- Rounded corners
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset("assets/icons/black_star.svg"),
                                  SizedBox(height: 8),
                                  Text(
                                    'Create Account',
                                    style: const TextStyle(
                                      fontFamily: 'Satoshi',
                                      color: Color(0xFF071A27),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  SocialMediaWidget(),
                                  SizedBox(height: 20),
                                  Form(
                                    key: _formKey,
                                    child: Column(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        InputField(
                                          inputLabel: 'User name',
                                          inputPlaceholder: 'Enter your username',
                                        ),
                                        SizedBox(height: 15),
                                        InputField(
                                          inputLabel: 'Email',
                                          inputPlaceholder: 'Enter your email',
                                        ),
                                        SizedBox(height: 15),
                                        InputField(
                                          inputLabel: 'Password',
                                          inputPlaceholder: 'Enter your password',
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: AppContainerButton(buttonText: 'Signup', onPress: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const StatusScreen()),
                                                );
                                              }, ),
                                            ),
                                            AppTextButton(buttonText: "Login" , alignment: Alignment.centerRight , onPress: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const LoginScreen()),
                                              );
                                            },),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

