import 'package:dart_notebook/model_prac/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'provider demo',
      // providerで状態管理する箇所を囲む
      home: ChangeNotifierProvider<MainModel>(
        // この画面が作成されたときにMainModelも読み込ませる
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('provider'),
          ),
          // 再描画したい箇所だけConsumerで囲む
          // notifyListeners()で再描画される
          // modelの中身はMainModel
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(model.text),
                  ElevatedButton(
                    child: Text('ボタン'),
                    onPressed: () {
                      model.changeText();
                    },
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
