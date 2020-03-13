import 'package:flutter/material.dart';
import '../components/DialogDemo.dart';

class HomePage extends StatefulWidget {
    HomePage({Key key}) : super(key: key);
    @override
    _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State <HomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Padding(
                padding: EdgeInsets.all(20),
                child: Wrap(
                    children: <Widget>[
                        RaisedButton(
                            child: Text('基础表单组件'),
                            color: Colors.lightBlue,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/form');
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('Swiper图片滑动'),
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/swiper');
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('自定义提示框'),
                            color: Colors.pink,
                            textColor: Colors.white,
                            onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                      return CustomAlertDialog(
                                          title: '提示',
                                          content: '我是提示内容',
                                      );
                                  }
                                );
                            },
                        ),
                        SizedBox(width: 20,),
                    ],
                ),
            ),
        );
    }
}