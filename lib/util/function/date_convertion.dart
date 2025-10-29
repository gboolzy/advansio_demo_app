import 'package:intl/intl.dart';

String timeAgoSinceDate(String dateString) {
  final dateTime = DateTime.parse(dateString).toLocal();
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inSeconds < 60) {
    return 'just now';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
  } else if (difference.inDays < 7) {
    return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
  } else if (difference.inDays < 30) {
    final weeks = (difference.inDays / 7).floor();
    return weeks == 1 ? 'a week ago' : '$weeks weeks ago';
  } else if (difference.inDays < 365) {
    final months = (difference.inDays / 30).floor();
    return months == 1 ? 'a month ago' : '$months months ago';
  } else {
    final years = (difference.inDays / 365).floor();
    return years == 1 ? 'a year ago' : '$years years ago';
  }
}

void main() {
  final dateString = '2025-10-28T02:32:45Z';
  print(timeAgoSinceDate(dateString)); // Example: "6 days ago" or "a week ago"
}
