import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
   //textの値がここで決められて、notifyListeners();でviewに伝えられる

  String text = 'テキスト';

  void changeText() {
    text = 'テキストが変わった';
    notifyListeners();
  }
}