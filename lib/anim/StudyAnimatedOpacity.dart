import 'package:flutter/material.dart';

class StudyAnimatedOpacityApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedOpacity实现键入淡出效果',
      home: AnimatedOpacityDemo(),
    );
  }

}

class AnimatedOpacityDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AnimatedOpacityState();
}

class AnimatedOpacityState extends State<AnimatedOpacityDemo>{
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedOpacity实现键入淡出效果'),),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible?1.0:0.0,
          duration: Duration(
            milliseconds: 1000
          ),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: '显示隐藏',
        child: Icon(Icons.flip),
      ),
    );
  }

}