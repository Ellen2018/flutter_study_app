import 'package:flutter/material.dart';

class StudyLimitedBoxApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LimitedBox组件学习',
      home: LimitedBoxDemo(),
    );
  }

}

///限制最大宽高布局组件:LimitedBox
class LimitedBoxDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('LimitedBox组件学习'),
     ),
     body: Row(
       children: <Widget>[
         Container(
           color: Colors.grey,
           width: 100,
         ),
         LimitedBox(
           maxWidth: 150,
           child: Container(
             color: Colors.lightGreen,
             width: 250,
           ),
         )
       ],
     ),
   );
  }

}