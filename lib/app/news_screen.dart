import 'package:demo_app/util/widget/util_widget.dart';
import 'package:flutter/material.dart';

import '../util/function/date_convertion.dart';
import '../util/widget/bottom_navigation.dart';
import 'news_feed_screen.dart';

class NewsScreen extends StatelessWidget {
  final String? imageUrl;
  final String? headline;
  final String? title;
  final String? author;
  final String? time;
  final String? description;
  const NewsScreen({
    super.key,
    this.imageUrl,
    this.headline,
    this.title,
    this.author,
    this.time,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
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
                                child: GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Icon(Icons.arrow_back),
                                ),
                              ),
                            ],
                          ),
                          AppNotification(isActive: true),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          NewsBlock(
                            imagePath: imageUrl,
                            newsHeadlines: headline ?? "",
                            newsHeadlinesTitle: title ?? "",
                            onTap: () {},
                            fontSize: 24,
                          ),
                          SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                              time != null ? timeAgoSinceDate(time!) :  "-",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF475569),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  author != null
                                      ? "Reporter: ${author!}"
                                      : "Reporter: ",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF475569),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            description ?? "",
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF475569),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20, // equal margin on left
              right: 20,
              child: BottomNav(),
            ),
          ],
        ),
      ),
    );
  }
}
