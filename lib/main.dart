import 'package:demo_app/app/news_feed_screen.dart';
import 'package:demo_app/app/spash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/service/auth_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  bool? isLoggedIn = await LocalAuthService.isLoggedIn();

  runApp( MyApp(isLoggedIn: isLoggedIn,));
}

class MyApp extends StatelessWidget {
  final bool? isLoggedIn;
  const MyApp({super.key,
     this.isLoggedIn});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: isLoggedIn != null && isLoggedIn == true ? const NewsFeedScreen() : const SplashScreen(),
    );
  }
}

