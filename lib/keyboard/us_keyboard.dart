import 'package:flutter/material.dart';

import '../models/key_data.dart';
import 'keyboard_row.dart';

class UsKeyboard extends StatelessWidget {
  const UsKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double topPadding = 6;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: topPadding),
          child: KeyboardRow(UsKeyboardLayout.topRow),
        ),
        Padding(
          padding: const EdgeInsets.only(top: topPadding),
          child: KeyboardRow(UsKeyboardLayout.middleRow),
        ),
        Padding(
          padding: const EdgeInsets.only(top: topPadding),
          child: KeyboardRow(UsKeyboardLayout.bottomRow),
        ),
      ],
    );
  }
}

class UsKeyboardLayout {
  static List<KeyData> topRow = [
    KeyData('Q'),
    KeyData('W'),
    KeyData('E'),
    KeyData('R'),
    KeyData('T'),
    KeyData('Y'),
    KeyData('U'),
    KeyData('I'),
    KeyData('O'),
    KeyData('P', lastKey: true),
  ];

  static List<KeyData> middleRow = [
    KeyData('A'),
    KeyData('S'),
    KeyData('D'),
    KeyData('F'),
    KeyData('G'),
    KeyData('H'),
    KeyData('J'),
    KeyData('K'),
    KeyData('L', lastKey: true),
  ];

  static List<KeyData> bottomRow = [
    KeyData('Z'),
    KeyData('X'),
    KeyData('C'),
    KeyData('V'),
    KeyData('B'),
    KeyData('N'),
    KeyData(
      'M',
      lastKey: true,
    )
  ];
}
