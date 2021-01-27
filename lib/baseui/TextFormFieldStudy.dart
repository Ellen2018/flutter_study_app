import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //全局Key用来获取Form表单组件
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  //用户名
  String userName;

  //密码
  String password;

  void login() {
    var loginForm = loginKey.currentState;

    if (loginForm.validate()) {
      loginForm.save();
      print('userName:' + userName + 'password' + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'From表单示例',
      home: Scaffold(
        appBar: AppBar(title: Text('From 表单示例'),),
        body: Column(
          children: <Widget>[Container(
            padding: const EdgeInsets.all(16.0),
            child: Form(key: loginKey, child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: '请输入用户名'),
                onSaved: (value) {
                  userName = value;
                },
                onFieldSubmitted: (value) {},
              ),
              TextFormField(
                decoration: InputDecoration(labelText: '请输入密码'),
                obscureText: true,
                validator: (value) {
                  return value.length < 6 ? "密码长度不够6位" : null;
                },
                onSaved: (value) {
                  password = value;
                },
              )
            ],),),),
             SizedBox(
              width:340.0,height: 42.0,
               child: RaisedButton(
                 onPressed: login,
                 child: Text('登录',style: TextStyle(fontSize: 18.0),),
               ),
            )
          ],
        ),
      ),
    );
  }
}