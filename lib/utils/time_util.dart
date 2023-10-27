import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final getGreetingProvider = Provider<String>((ref) {
  final currentTime = DateTime.now();
  final timeFormat = DateFormat('hh:mm a').format(currentTime);

  if (timeFormat.compareTo("00:00 AM") >= 0 &&
      timeFormat.compareTo("11:59 AM") <= 0) {
    return "Good morning";
  } else if (timeFormat.compareTo("12:00 AM") >= 0 &&
      timeFormat.compareTo("17:59 AM") <= 0) {
    return "Good afternoon";
  } else {
    return "Good evening";
  }
});
