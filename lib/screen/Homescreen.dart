import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:texttospeech/screen/widget/DoubelElvetedbuton.dart';
import 'package:texttospeech/screen/widget/Pitch.dart';

import '../constant.dart';
import 'widget/Language.dart';
import 'widget/SpeechRate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(children: [
            doubelelvetedButton(),
            Pitch(),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 80,
                    child: Text(
                      "Volume",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Slider(
                    min: 0.0,
                    max: 1.0,
                    value: volume,
                    onChanged: (value) {
                      setState(() {
                        volume = value;
                      });
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                        double.parse((volume).toStringAsFixed(2)).toString(),
                        style: const TextStyle(fontSize: 17)),
                  )
                ],
              ),
            ),
            SpeechRate(),
            if (languages != null) Language(),
          ]),
        ),
      ),
    ));
  }
}
