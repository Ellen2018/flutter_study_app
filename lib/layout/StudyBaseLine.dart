import 'package:flutter/material.dart';

class StudyBaseLineApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BaseLine组件学习',
      home: BaseLineDemo(),
    );
  }

}

class BaseLineDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BaseLine基准线布局示例'),),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text('AaBbCc',style: TextStyle(fontSize: 18,textBaseline: TextBaseline.alphabetic),),
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.green,
            )
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text('DdEeFf',style: TextStyle(fontSize: 26,textBaseline: TextBaseline.alphabetic),),
          ),
        ],
      ),
    );
  }

}