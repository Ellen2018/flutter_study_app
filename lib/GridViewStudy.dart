import 'package:flutter/material.dart';

class StudyGridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'GridView组件学习',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView组件学习'),
        ),
        body: GridView.count(
            crossAxisCount: 3,
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 30.0,
            children: <Widget>[
              const Text('第1行第1列'),
              const Text('第1行第2列'),
              const Text('第1行第3列'),
              const Text('第2行第1列'),
              const Text('第2行第2列'),
              const Text('第2行第3列'),
              const Text('第3行第1列'),
              const Text('第3行第2列'),
              const Text('第3行第3列'),
              const Text('第4行第1列'),
              const Text('第4行第2列'),
              const Text('第4行第3列')
            ]),
      ),
    );
  }
}
