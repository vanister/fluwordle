import 'package:flutter/material.dart';

import 'wordle_square.dart';

class WordleRow extends StatelessWidget {
  const WordleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // letters
        WordleSquare(
          'S',
          isClose: true,
        ),
        WordleSquare('T'),
        WordleSquare(
          'A',
          isClose: true,
        ),
        WordleSquare('R'),
        WordleSquare(
          'T',
          isCorrect: true,
        ),
      ],
    );
  }
}
