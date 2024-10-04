import 'package:flutter/material.dart';
import 'package:tunes/models/tune_model.dart';
import 'package:tunes/widgets/tune_item.dart';

class TunePage extends StatelessWidget {
  const TunePage({super.key});

  final List<TuneModel> tune = const [
    TuneModel(color: Colors.green, sound: 'note1.wav'),
    TuneModel(color: Colors.red, sound: 'note2.wav'),
    TuneModel(color: Colors.black, sound: 'note3.wav'),
    TuneModel(color: Colors.blue, sound: 'note4.wav'),
    TuneModel(color: Colors.orange, sound: 'note5.wav'),
    TuneModel(color: Colors.grey, sound: 'note6.wav'),
    TuneModel(color: Colors.pink, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff26313A),
        elevation: 0,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: /*getTuneItems(),*/
            tune
                .map(
                  (e) => TuneItem(tunemodel: e),
                )
                .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];
  //   for (var color in tuneColors) {
  //     items.add(
  //       TuneItem(color: color),
  //     );
  //   }
  //   return items;
  // }
}
