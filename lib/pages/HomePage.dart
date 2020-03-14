import 'package:flutter/material.dart';
import '../components/DialogWidget.dart';

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
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/form');
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('底部工具栏+浮动按钮'),
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/bottomAppBar', arguments: {
                                    'title': '底部工具栏+浮动按钮'
                                });
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('页面跳转动画'),
                            color: Colors.brown,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/pageSkipAnimation');
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('毛玻璃'),
                            color: Colors.pink,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/frostedGlass');
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('自定义提示框'),
                            color: Colors.blue,
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
                        RaisedButton(
                            child: Text('TabBar切换+保持页面状态'),
                            color: Colors.indigoAccent,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/tabBar');
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('Swiper图片滑动'),
                            color: Colors.purple,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/swiper');
                            },
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                            child: Text('搜索框匹配'),
                            color: Colors.orange,
                            textColor: Colors.white,
                            onPressed: () {
                                Navigator.pushNamed(context, '/searchBar');
                            },
                        ),
                    ],
                ),
            ),
        );
    }
}