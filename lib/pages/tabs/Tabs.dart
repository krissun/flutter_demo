import 'package:flutter/material.dart';
import '../CategoryPage.dart';
import '../SettingPage.dart';
import '../HomePage.dart';

class Tabs extends StatefulWidget {
    Tabs({Key key}) : super(key: key);
    @override
    _TabsState createState() => _TabsState();
}

class _TabsState extends State <Tabs> {
    int _currentIndex = 0;

    List _pageList = [
        HomePage(),
        CategoryPage(),
        SettingPage()
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('Flutter'),),
            body: this._pageList[this._currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        title: Text('首页'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.category),
                        title: Text('分类'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings),
                        title: Text('设置'),
                    ),
                ],
                iconSize: 36,//icon大小
                fixedColor: Colors.redAccent,//选择颜色
                type: BottomNavigationBarType.fixed,//配置底部tabs可以有多个按钮
                currentIndex: this._currentIndex,
                onTap: (int index) {
                    setState(() {
                        this._currentIndex = index;
                    });
                },
            ),
            drawer: Drawer(
                child: Column(
                    children: <Widget>[
                        UserAccountsDrawerHeader(
                            accountName: Text('123456789'),
                            accountEmail: Text('ck617@foxmail.com'),
                            currentAccountPicture: CircleAvatar(
                                backgroundImage: NetworkImage('https://img2.sycdn.imooc.com/5333a2320001acdd02000200-140-140.jpg'),
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage('https://img4.sycdn.imooc.com/5a72827d0001cb8006000338-360-202.jpg'),
                                    fit: BoxFit.cover,
                                ),
                            ),
                        ),
                        ListTile(
                            leading: CircleAvatar(
                                child: Icon(Icons.home),
                            ),
                            title: Text('我的空间'),
                        ),
                        Divider(),
                        ListTile(
                            leading: CircleAvatar(
                                child: Icon(Icons.home),
                            ),
                            title: Text('用户中心'),
                            onTap: () {
                                Navigator.of(context).pop();
                                Navigator.pushNamed(context, '/user');
                            },
                        ),
                        Divider(),
                        ListTile(
                            leading: CircleAvatar(
                                child: Icon(Icons.home),
                            ),
                            title: Text('设置中心'),
                        ),
                        Divider(),
                    ],
                ),
            ),
        );
    }
}