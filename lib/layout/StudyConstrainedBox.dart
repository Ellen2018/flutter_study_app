import 'package:flutter/material.dart';

class StudyConstrainedBoxApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ConstrainedBoxed组件学习',
      home: ConstrainedBoxDemo(),
    );
  }
}

///限制最大最小宽高布局组件ConstrainedBox
class ConstrainedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBoxed组件学习'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 150,
          minHeight: 150,
          maxWidth: 220,
          maxHeight: 220
        ),
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
      ),
    );
  }

}