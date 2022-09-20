import 'package:flutter/material.dart';

import '../../constant.dart';

class doubelelvetedButton extends StatelessWidget {
  const doubelelvetedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 200,
          height: 60,
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Text',
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          child: Text("Speaks"),
          onPressed: () {
            speak();
          },
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          child: const Text("Stop"),
          onPressed: () {
            stop();
          },
        ),
      ],
    );
  }
}
