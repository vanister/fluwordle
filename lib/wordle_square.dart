import 'package:flutter/material.dart';

class WordleSquare extends StatelessWidget {
  final String letter;
  final bool isCorrect;
  final bool isClose;

  const WordleSquare(this.letter,
      {Key? key, this.isCorrect = false, this.isClose = false})
      : super(key: key);

  Color _colorSquare() {
    if (isCorrect) {
      return Colors.green.shade600;
    }

    if (isClose) {
      return Colors.yellow.shade800;
    }

    return Colors.grey.shade900;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      width: 50,
      height: 50,
      decoration:
          BoxDecoration(border: Border.all(width: 2), color: _colorSquare()),
      child: Center(
          child: Text(letter,
              style: const TextStyle(
                  fontSize: 18.0, fontWeight: FontWeight.bold))),
    );
  }
}
