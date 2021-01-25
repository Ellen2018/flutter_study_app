import 'package:flutter/material.dart';

class StudyFittedBoxApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FittedBox组件学习',
      home: FittedBoxDemo(),
    );
  }
}

class FittedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FittedBox组件'),),
      body: Container(
        width: 250,
        height: 250,
        child: FittedBox(
          fit: BoxFit.contain,//修改此属性会显示不同的效果
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.deepOrange,
            child: Text('缩放布局'),
          ),
        ),
      ),
    );
  }

}