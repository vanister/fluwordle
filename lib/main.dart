import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'wordle_screen.dart';

void main() {
  runApp(const WordleApp());
}

class WordleApp extends StatelessWidget {
  const WordleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));

    return MaterialApp(
      title: 'Wordle Clone',
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.dark),
      home: const WordleScreen(),
    );
  }
}
