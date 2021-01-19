import 'package:flutter/material.dart';

class ContainerStudyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件学习',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件学习示例'),
        ),
        body: Center(
          //添加容器
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: new Border.all(color: Colors.grey, width: 8.0),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
            ),
            child: Text(
                'Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28.0)
            )
          ),
        ),
      ),
    );
  }

}