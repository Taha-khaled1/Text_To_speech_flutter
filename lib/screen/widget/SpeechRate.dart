import 'package:flutter/material.dart';

import '../../constant.dart';

class SpeechRate extends StatefulWidget {
  SpeechRate({Key? key}) : super(key: key);

  @override
  State<SpeechRate> createState() => _SpeechRateState();
}

class _SpeechRateState extends State<SpeechRate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 80,
            child: Text(
              "Speech Rate",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Slider(
            min: 0.0,
            max: 1.0,
            value: speechRate,
            onChanged: (value) {
              setState(() {
                speechRate = value;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(
                double.parse((speechRate).toStringAsFixed(2)).toString(),
                style: const TextStyle(fontSize: 17)),
          )
        ],
      ),
    );
  }
}
