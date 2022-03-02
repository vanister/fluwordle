import 'package:flutter/material.dart';

class KeyboardKey extends StatelessWidget {
  final String letter;
  final bool isUsed;
  final double rightMargin;

  const KeyboardKey(this.letter,
      {Key? key, this.isUsed = false, this.rightMargin = 4.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var keyColor = isUsed ? Colors.grey.shade900 : Colors.grey.shade800;

    return Container(
      width: 32,
      height: 58,
      margin: EdgeInsets.only(right: rightMargin),
      decoration: BoxDecoration(
          color: keyColor, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          letter,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
