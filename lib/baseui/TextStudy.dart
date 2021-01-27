import 'package:flutter/material.dart';

/// 文本组件的学习
/// new Text()
/// 属性说明：
/// 字符串 -> 文本的内容
/// style -> 设置文本的风格，文本颜色 & 下划线 & 上划线 & 删除线等
/// fontSize -> 文本的大小
/// fontStyle
/// fontWeight
/// letterSpacing

class StudyTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Text 组件学习',
        home: new Scaffold(
            appBar: new AppBar(title: new Text('文本组件')),
            body: new Column(
              children: <Widget>[
                new Text(
                  '红色 + 黑色删除线+25号',
                  style: new TextStyle(
                      color: const Color(0xffff0000),
                      decoration: TextDecoration.lineThrough, //删除线
                      decorationColor: const Color(0xff000000),
                      fontSize: 25.0),
            ),
            new Text(
              '红色 + 黑色下划线+25号',
              style: new TextStyle(
                  color: const Color(0xffff0000),
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xff000000),
                  fontSize: 25.0),
            ),
            new Text(
              '红色 + 黑色虚线上划线+25号',
              style: new TextStyle(
                  color: const Color(0xffff0000),
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: const Color(0xff000000),
                  fontSize: 25.0),
            ),
                new Text(
                  '红色 + 加粗',
                  style: new TextStyle(
                      color: const Color(0xffff0000),
                      fontSize: 25.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 6.0),
                ),
              ],
            )));
  }
}
