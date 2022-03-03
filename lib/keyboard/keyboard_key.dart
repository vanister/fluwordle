import 'package:flutter/material.dart';

class KeyboardKey extends StatelessWidget {
  final String letter;
  final bool isUsed;

  const KeyboardKey(this.letter, {Key? key, this.isUsed = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var keyColor = isUsed ? Colors.grey.shade900 : Colors.grey.shade800;

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
