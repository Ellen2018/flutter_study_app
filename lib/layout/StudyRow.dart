import 'package:flutter/material.dart';

class StudyRowApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row组件学习',
      home: RowDemo(),
    );
  }

}

class RowDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Row组件学习'),),
       body: Row(
         children: <Widget>[
           Expanded(
             child: Text('左侧文本',textAlign: TextAlign.center,),
           ),
           Expanded(
             child: Text('中间文本',textAlign: TextAlign.center),
           ),
           Expanded(
             child: Text('右侧侧文本',textAlign: TextAlign.center),
           ),
         ],
       ),
     );
  }
}