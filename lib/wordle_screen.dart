import 'package:flutter/material.dart';
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
              child: Container(
            width: double.infinity,
            color: Colors.indigo,
            child: const Center(child: Text('Keyboard container')),
          ))
        ]),
      ),
    );
  }
}
