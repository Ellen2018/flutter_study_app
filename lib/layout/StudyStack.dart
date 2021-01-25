import 'package:flutter/material.dart';

class StudyStackApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack组件学习',
      home: StackPositionDemo(),
    );
  }

}

class StackAlignmentDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
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

class StackPositionDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Image.asset('images/img1.jpg'),
        Positioned(
          bottom: 50,
          right: 50,
          child: Text('hi flutter',style: TextStyle(fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'serif',color: Colors.white),),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(title:Text('Stack组件学习')),
      body: Center(child: stack,),
    );
  }

}