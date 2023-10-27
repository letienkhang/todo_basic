import 'package:hooks_riverpod/hooks_riverpod.dart';

final getGreetingProvider = Provider<String>((ref) {
  final currentHourTime = DateTime.now().hour;

  if (currentHourTime < 12) {
    return "Good morning";
  }
  if (currentHourTime < 17) {
    return "Good afternoon";
  }
  return "Good evening";

});
