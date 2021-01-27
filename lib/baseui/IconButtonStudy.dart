import 'package:flutter/material.dart';

///IconButton学习
///icon -> 设置组件显示的图片
///onPressed->设置按下执行的操作
class StudyIconButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'IconButton 组件学习',
        home: new Scaffold(
            body: new Center(
                child: new IconButton(
                    icon: Icon(Icons.volume_up, size: 48.0),
                    tooltip: '按下操作',
                    onPressed: () {
                      print('按下操作');
                    }))));
  }
}
