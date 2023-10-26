import 'package:flutter/material.dart';
import 'package:todo_basic/utils/time_util.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key, required this.greeting});

  final String greeting;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$greeting!\nHere are your tasks\nfor today.',
      textAlign: TextAlign.start,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.w500,
        fontFamily: 'Helvetica Neue',
      ),
    );
  }
}
