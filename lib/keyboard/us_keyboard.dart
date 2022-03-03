import 'package:wordle_clone/models/key_data.dart';

class UsKeyboard {
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
