import 'package:flutter/material.dart';
import 'package:tunes/pages/Tune_page.dart';

void main() {
  runApp(const Tunes());
}

class Tunes extends StatelessWidget {
  const Tunes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TunePage(),
    );
  }
}
