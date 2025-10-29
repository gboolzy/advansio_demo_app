
import 'package:dio/dio.dart';

import 'news_feed_model.dart';

// Setup Dio with base options
final dio = Dio(
  BaseOptions(
    baseUrl: 'https://newsapi.org/v2',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ),
);

// Fetch and parse the news feed
Future<NewsFeedResponse?> fetchNewsFeed() async {
  try {
    final response = await dio.get(
      '/top-headlines',
      queryParameters: {
        'country': 'us',
        'apiKey': '424dbefc65b94fc5969b05ab2197fb20',
      },
    );

    final newsFeed = NewsFeedResponse.fromJson(response.data);
    print(newsFeed);
    return newsFeed;
  } catch (e) {
    print('Error fetching news: $e');
    return null;
  }
}
