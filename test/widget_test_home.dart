import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_basic/screens/home_screen.dart';
import 'package:todo_basic/widgets/home_2sd_title.dart';
import 'package:todo_basic/widgets/home_title.dart';
import 'package:todo_basic/widgets/home_toobar.dart';

void main() {
  testWidgets('Test Home widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: Home(),
        ),
      ),
    );

// Kiểm tra xem các widget con có hiển thị đúng không
    expect(find.byType(HomeTitle), findsOneWidget);
    expect(find.byType(Home2SDTitle), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
    expect(find.byType(HomeToolbar), findsOneWidget);
  });
}
