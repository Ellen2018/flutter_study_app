import 'package:flutter/material.dart';

class StudyTextFieldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField组件学习',
      home: TextFieldDemo(),
    );
  }

}

class TextFieldDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    controller.addListener(() {
      print('你输入的内容是:${controller.text}');
    });

    return Scaffold(
      appBar: AppBar(title: Text('TextField组件学习'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            //绑定controller
            controller: controller,
            //最大长度为30
            maxLength: 30,
            maxLines: 1,
            //是否自动更正
            autocorrect: true,
            //是否自动对焦
            autofocus: true,
            //是否为设置密码
            obscureText: false,
            //文本对齐方式
            textAlign: TextAlign.center,
            //输入文本的样式
            style: TextStyle(fontSize: 26.0,color: Colors.blue),
            onChanged: (text){
              print('文本改变时的回调:$text');
            },
            onSubmitted: (text){
              print('文本提交时回调:$text');
            },
            enabled: true,//是否禁用
            //添加装饰
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              helperText: '用户名',
              prefixIcon: Icon(Icons.person),
              suffixText: '用户名'
            ),

          ),
        ),
      ),
    );
  }

}