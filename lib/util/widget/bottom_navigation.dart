import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late bool home;
  late bool explore;
  late bool heart;
  late bool profile;

  @override
  void initState() {
    // TODO: implement initState
    home = true;
    explore = false;
    heart = false;
    profile = false;
    super.initState();
  }
  bottomNavFunc(String value) {
    print("=========>" + value);
    setState(() {
      home = false;
      explore = false;
      heart = false;
      profile = false;
      if(value == "home"){
        home = true;
      }else if(value == "explore"){
        explore = true;
      }else if(value == "heart"){
        heart = true;
      }else if(value == "profile"){
        profile = true;
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 68,
      decoration: BoxDecoration(
        color: Color(0xFF3C25B3),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavIcon(
              imagePath: "assets/icons/home.svg",
              isActive: home,
              bottomNavAction: ()=>bottomNavFunc("home"),
            ),
            BottomNavIcon(
              imagePath: "assets/icons/explore.svg",
              isActive: explore,
              bottomNavAction:()=> bottomNavFunc("explore"),
            ),
            BottomNavIcon(
              imagePath: "assets/icons/heart.svg",
              isActive: heart,
              bottomNavAction:()=> bottomNavFunc("heart"),
            ),
            BottomNavIcon(
              imagePath: "assets/icons/profile.svg",
              isActive: profile,
              bottomNavAction: (){
                bottomNavFunc("profile");
              }
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavIcon extends StatelessWidget {
  final String imagePath;
  final bool isActive;
  final void Function()? bottomNavAction;
  const BottomNavIcon({
    super.key,
    required this.imagePath,
    required this.isActive,
    this.bottomNavAction,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            height: 36,
            width: 48,
            decoration: BoxDecoration(
              color: Color(0xFF071A27),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(imagePath),
            ),
          )
        : GestureDetector(
            onTap: bottomNavAction,
            child: SvgPicture.asset(imagePath),
          );
  }
}
