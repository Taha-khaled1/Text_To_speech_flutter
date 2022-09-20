import 'package:flutter/material.dart';

import '../../constant.dart';

class Language extends StatefulWidget {
  Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const Text(
            "Language :",
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(
            width: 10,
          ),
          DropdownButton<String>(
            focusColor: Colors.white,
            value: langCode,
            style: const TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: languages!.map<DropdownMenuItem<String>>((String? value) {
              return DropdownMenuItem<String>(
                value: value!,
                child: Text(
                  value,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                langCode = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
