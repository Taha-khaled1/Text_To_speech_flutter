import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

FlutterTts flutterTts = FlutterTts();
TextEditingController controller = TextEditingController();

double volume = 1.0;
double pitch = 1.0;
double speechRate = 0.5;
List<String>? languages;
String langCode = "en";
void init() async {
  languages = List<String>.from(await flutterTts.getLanguages);
  // setState(() {});
}

initSetting() async {
  await flutterTts.setVolume(volume);
  await flutterTts.setPitch(pitch);
  await flutterTts.setSpeechRate(speechRate);
  await flutterTts.setLanguage(langCode);
}

fun() {
  print('oooooooooooooooo');
}

speak() async {
  initSetting();
  await flutterTts.speak(controller.text);
  print('xxxxxxxxxxxxxxxx');
}

stop() async {
  await flutterTts.stop();
  print('vvvvvvvvvvvvvvvvvvvvvvvvvvv');
}
