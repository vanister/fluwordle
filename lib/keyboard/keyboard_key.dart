import 'package:flutter/material.dart';

import '../models/key_data.dart';

class KeyboardKey extends StatelessWidget {
  final KeyData keyData;

  const KeyboardKey(this.keyData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final letter = keyData.letter;
    final keyColor =
        keyData.isUsed ? Colors.grey.shade900 : Colors.grey.shade800;

    return Container(
      width: 34,
      height: 58,
      decoration: BoxDecoration(
          color: keyColor, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
          onPressed: () => print('Pressed Key: "$letter"'),
          child: Text(
            letter,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
