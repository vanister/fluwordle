import 'package:flutter/material.dart';

import 'keyboard/us_keyboard.dart';
import 'wordle_row.dart';

class WordleScreen extends StatelessWidget {
  const WordleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fluwordle')),
      body: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 2,
              child: Container(
                  padding: const EdgeInsets.only(top: 12),
                  width: double.infinity,
                  child: Column(
                    children: const [
                      // guessed word rows
                      WordleRow(),
                      WordleRow(),
                      WordleRow(),
                      WordleRow(),
                      WordleRow(),
                      WordleRow(),
                    ],
                  ))),
          const Expanded(
              child: SizedBox(
                  width: double.infinity,
                  // keyboard_row
                  child: UsKeyboard()))
        ]),
      ),
    );
  }
}
