import 'package:flutter/material.dart';

class StudyHeroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero动画学习',
      home: HeroPage1(),
    );
  }
  
}

class HeroPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('页面切换动画图一'),),
      body: GestureDetector(
        child: Hero(
          tag: '第一张图',
          child: Image.asset('images/img1.jpg')
        ),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return HeroPage2();
          }));
        },
      ),
    );
  }
  
}

class HeroPage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('页面切换动画图二'),),
      body: GestureDetector(
        child: Hero(
          tag: '第二张图',
          child: Image.asset('images/img1.jpg'),
        ),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}