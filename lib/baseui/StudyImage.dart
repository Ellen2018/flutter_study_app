import 'package:flutter/material.dart';

class StudyImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image组件学习',
      home: ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image组件学习'),
      ),
      body: Center(
        child: Image.network(
          'http://ww3.sinaimg.cn/bmiddle/6e91531djw1e8l3c7wo7xj20f00qo755.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
