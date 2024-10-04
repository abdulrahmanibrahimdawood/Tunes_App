import 'package:flutter/material.dart';
import 'package:tunes/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tunemodel});
  final TuneModel tunemodel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunemodel.PlaySound();
        },
        child: Container(
          height: 100,
          color: tunemodel.color,
        ),
      ),
    );
  }
}
