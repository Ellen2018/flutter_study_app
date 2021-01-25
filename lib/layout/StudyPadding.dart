import 'package:flutter/material.dart';

class StudyPaddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '布局Padding组件学习',
      home: PaddingDemo(),
    );
  }
}

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding组件学习'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          padding: EdgeInsets.all(60.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.green,
                width: 8.0,
              )),
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.green,
                  width: 8.0,
                )
            ),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
