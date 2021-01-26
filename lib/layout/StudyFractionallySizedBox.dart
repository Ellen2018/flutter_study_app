import 'package:flutter/material.dart';

class StudyFractionallySizedBoxApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FractionallySizedBox组件学习',
      home: FractionallySizedBoxDemo(),
    );
  }

}

class FractionallySizedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FractionallySizedBox百分比布局示例'),),
      body: Container(
        color: Colors.blueGrey,
        height: 200,
        width: 200,
        child: FractionallySizedBox(
          alignment: Alignment.topLeft,
          widthFactor: 0.5,
          heightFactor: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }

}