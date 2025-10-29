import 'package:demo_app/util/widget/util_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'news_feed_screen.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFF3F6F8),
                              ),
                              child: Icon(Icons.arrow_back),
                            ),
                          ],
                        ),
                        AppNotification(isActive: true,),
                      ],
                    ),
                  ),
                  NewsBlock(
                    imagePath: 'assets/images/news_img.png',
                    newsHeadlines: 'Local news',
                    newsHeadlinesTitle:
                        'Fuel subsidy discussion in T-pain reign',
                    onTap: () {},
                    fontSize: 24,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "6hrs ago",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF475569),
                        ),
                      ),
                      Text(
                        "Reporter: Charly Arnolt",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF475569),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        "Arsenal chiefs are flying to the US this week to hold talks with the Kroenke family"
                        " after sporting director Edu resigned, according to the Evening The"
                        " meeting has been scheduled for a while but now holds more importance given Edu's "
                        "exit plans for the next two transfer windows will be one of the main priorities.",
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF475569),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20, // equal margin on left
              right: 20,
              child: Container(
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
                        isActive: true,
                      ),
                      BottomNavIcon(
                        imagePath: "assets/icons/explore.svg",
                        isActive: false,
                      ),
                      BottomNavIcon(
                        imagePath: "assets/icons/heart.svg",
                        isActive: false,
                      ),
                      BottomNavIcon(
                        imagePath: "assets/icons/profile.svg",
                        isActive: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
