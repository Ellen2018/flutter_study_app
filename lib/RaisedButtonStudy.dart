import 'package:flutter/material.dart';

///RaisedButton学习
class StudyRaisedButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'RaisedButton 组件学习',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('RaisedButton 组件学习'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: () {
              print('点击了RaisedButton');
            },
            child: new Text('RaisedButton 组件学习'),
          ),
        ),
      ),
    );
  }
}
