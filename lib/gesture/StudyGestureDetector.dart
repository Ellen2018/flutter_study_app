import 'package:flutter/material.dart';

class StudyGestureDetectorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestureDetector手势学习',
      home: GestureDetectorDemo(),
    );
  }

}

class GestureDetectorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GestureDetector手势学习'),),
      body: Center(
        child: GestureDetectorTest(),
      ),
    );
  }
}

class GestureDetectorTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///一定要把被触摸的组件放在GestureDetector里
    GestureDetector gestureDetector = GestureDetector(
      onTap: (){
        SnackBar snackBar = new SnackBar(content: Text('你已按下'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Text('测试按钮'),
      ),
    );
    return gestureDetector;
  }
}