import 'package:flutter/material.dart';

class StudyIndexStackApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack组件学习',
      home: IndexStackDemo(),
    );
  }

}

class IndexStackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack = IndexedStack(
      index: 1,
      alignment: Alignment.topLeft,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('images/img1.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black38
          ),
          child: Text('小飞侠',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(title:Text('Stack组件学习')),
      body: Center(child: stack,),
    );
  }

}
