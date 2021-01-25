import 'package:flutter/material.dart';

class StudyAlignApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Align组件学习',
      home: AlignDemo(),
    );
  }

}

class AlignDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align组件学习'),),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: FractionalOffset(0.0,0.0),
            child: Image.asset('images/img1.jpg',width: 128,height: 128,),
          ),
          Align(
            alignment: FractionalOffset(1.0,0.0),
            child: Image.asset('images/img1.jpg',width: 128,height: 128,),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset('images/img1.jpg',width: 128,height: 128,),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset('images/img1.jpg',width: 128,height: 128,),
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset('images/img1.jpg',width: 128,height: 128,),
          ),
        ],
      ),
    );
  }

}