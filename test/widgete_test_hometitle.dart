import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_basic/widgets/home_title.dart';

void main() {
  testWidgets('Test Home widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: HomeTitle(
            greeting: "",
          ),
        ),
      ),
    );


  }); 
}
