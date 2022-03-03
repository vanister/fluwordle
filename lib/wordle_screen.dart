import 'package:flutter/material.dart';
import 'package:wordle_clone/keyboard/keyboard_row.dart';
import 'package:wordle_clone/keyboard/us_keyboard.dart';
import 'package:wordle_clone/wordle_row.dart';

class WordleScreen extends StatelessWidget {
  const WordleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wordle Clone')),
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
          Expanded(
              child: SizedBox(
            width: double.infinity,

            // keyboard_row
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: KeyboardRow(UsKeyboard.topRow),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: KeyboardRow(UsKeyboard.middleRow),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: KeyboardRow(UsKeyboard.bottomRow),
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
