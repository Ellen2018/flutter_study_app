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
              //填充颜色
              color: Colors.white,
              //边框
              border: new Border.all(color: Colors.grey, width: 8.0),
              //圆角
              borderRadius: const BorderRadius.all(const Radius.circular(8.0))
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