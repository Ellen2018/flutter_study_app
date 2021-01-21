
import 'package:flutter/material.dart';

class StudyThemeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue //主题颜色
      ),
    );
  }
}