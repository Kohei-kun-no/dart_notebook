import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String text = 'テキスト';

  void changeText() {
    text = 'テキストが変わった';
    notifyListeners();
  }
}