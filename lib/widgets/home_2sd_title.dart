import 'package:flutter/material.dart';

class Home2SDTitle extends StatelessWidget {
  const Home2SDTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Let's get these tasks done!",
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w200,
        fontFamily: 'Helvetica Neue',
      ),
    );
  }
}
