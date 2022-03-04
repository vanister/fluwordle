import 'package:flutter/material.dart';

import '../models/key_data.dart';
import 'keyboard_key.dart';

class KeyboardRow extends StatefulWidget {
  final List<KeyData> rowKeys;

  const KeyboardRow(this.rowKeys, {Key? key}) : super(key: key);

  @override
  State<KeyboardRow> createState() => _KeyboardRowState();
}

class _KeyboardRowState extends State<KeyboardRow> {
  late List<KeyData> _keys;

  @override
  void initState() {
    super.initState();
    // take a copy of the inital key row so we can update the key colors
    // when a guess is made
    _keys = [...widget.rowKeys];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _keys
            .map((k) => Padding(
                  // pad they keys except the last key
                  padding: EdgeInsets.only(right: k.lastKey ? 0.0 : 4.0),
                  child: KeyboardKey(
                    k.letter,
                    isUsed: k.isUsed,
                  ),
                ))
            .toList());
  }
}
