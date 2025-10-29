import 'package:demo_app/app/news_screen.dart';
import 'package:demo_app/util/widget/user_input_fields.dart';
import 'package:demo_app/util/widget/util_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsFeedScreen extends StatefulWidget {
  const NewsFeedScreen({super.key});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
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
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: Image.asset(
                                  "assets/images/user_img.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Hi, Jay',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF071A27),
                              ),
                            ),
                          ],
                        ),
                        AppNotification(isActive: true,),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                          'Some News make People happy.',
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF071A27),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '🔥 Hot news',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF071A27),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 264,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  Excepteur sint occaecat cupidatat non.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: 'Satoshi',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF475569),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SliderIndicator(status: true),
                      SizedBox(width: 5),
                      SliderIndicator(status: false),
                      SizedBox(width: 5),
                      SliderIndicator(status: false),
                    ],
                  ),
                  InputField(
                    prefixIcon: SvgPicture.asset("assets/icons/search.svg"),
                    inputPlaceholder: 'Trending, Sport, etc',
                    borderRadius: 40,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              NewsTabs(tabLabel: "All", active: true),
                              NewsTabs(tabLabel: "Trending", active: false),
                              NewsTabs(tabLabel: "Sport", active: false),
                              NewsTabs(tabLabel: "Politics", active: false),
                              NewsTabs(
                                tabLabel: "International",
                                active: false,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          NewsBlock(
                            imagePath: 'assets/images/news_img.png',
                            newsHeadlines: 'Local news',
                            newsHeadlinesTitle:
                                'Fuel subsidy discussion in T-pain reign',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const NewsScreen(),
                                ),
                              );
                            },
                          ),

                          NewsBlock(
                            imagePath: 'assets/images/news_img.png',
                            newsHeadlines: 'Local news',
                            newsHeadlinesTitle:
                                'Fuel subsidy discussion in T-pain reign',
                            onTap: () {},
                          ),
                          NewsBlock(
                            imagePath: 'assets/images/news_img.png',
                            newsHeadlines: 'Local news',
                            newsHeadlinesTitle:
                                'Fuel subsidy discussion in T-pain reign',
                            onTap: () {},
                          ),
                        ],
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



class NewsBlock extends StatelessWidget {
  final String imagePath;
  final String newsHeadlines;
  final String newsHeadlinesTitle;
  final double? fontSize;
  final void Function() onTap;
  const NewsBlock({
    super.key,
    required this.imagePath,
    required this.newsHeadlines,
    required this.newsHeadlinesTitle,
    required this.onTap,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 171,
                width: double.infinity,
                child: Image.asset(imagePath),
              ),
              Positioned(
                right: 20,
                top: 15,
                child: Container(
                  width: 76,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.20),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      newsHeadlines,
                      style: TextStyle(
                        fontFamily: 'satoshi',
                        color: Color(0xFF071A27),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            newsHeadlinesTitle,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Satoshi',
              fontSize: fontSize ?? 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF475569),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavIcon extends StatelessWidget {
  final String imagePath;
  final bool isActive;
  const BottomNavIcon({
    super.key,
    required this.imagePath,
    required this.isActive,
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
        : SvgPicture.asset(imagePath);
  }
}

class NewsTabs extends StatelessWidget {
  final String tabLabel;
  final bool active;
  const NewsTabs({super.key, required this.tabLabel, required this.active});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: active ? Color(0xFF3C25B3) : Color(0xFFF3F6F8),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              tabLabel,
              style: TextStyle(
                color: active ? Colors.white : Color(0xFF475569),
                fontSize: 14,
                fontFamily: 'satoshi',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

class SliderIndicator extends StatelessWidget {
  final bool status;
  const SliderIndicator({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: status ? 1 : 0.15,
      child: Container(
        height: status ? 10 : 8,
        width: status ? 10 : 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF3C25B3),
        ),
      ),
    );
  }
}
