import 'package:flutter/material.dart';

import '../../constant.dart';

class Pitch extends StatefulWidget {
  Pitch({Key? key}) : super(key: key);

  @override
  State<Pitch> createState() => _PitchState();
}

class _PitchState extends State<Pitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 80,
            child: Text(
              "Pitch",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Slider(
            min: 0.5,
            max: 2.0,
            value: pitch,
            onChanged: (value) {
              setState(() {
                pitch = value;
              });
            },
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Text(double.parse((pitch).toStringAsFixed(2)).toString(),
                style: const TextStyle(fontSize: 17)),
          )
        ],
      ),
    );
  }
}
