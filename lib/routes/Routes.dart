import 'package:flutter/material.dart';
import '../pages/tabs/Tabs.dart';
import '../pages/UserPage.dart';
import '../examples/FormDemo.dart';
import '../examples/SwiperDemo.dart';
import '../examples/DialogDemo.dart';
import '../examples/BottomAppBarDemo.dart';
import '../examples/PageSkipAnimationDemo.dart';
import '../examples/FrostedGlassDemo.dart';
import '../examples/TabBarControllerDemo.dart';
import '../examples/SearchBarDemo.dart';

// 配置路由
final routes = {
    '/': (context) => Tabs(),
    '/user': (context) => UserPage(),
    '/form': (context) => FormDemo(),
    '/swiper': (context) => SwiperDemo(),
    '/dialog': (context) => DialogDemo(),
    '/bottomAppBar': (context, {arguments}) => BottomAppBarDemo(arguments: arguments),//带参数跳转
    '/pageSkipAnimation': (context) => FirstPage(),
    '/frostedGlass': (context) => FrostedGlassDemo(),
    '/tabBar': (context) => TabBarControllerDemo(),
    '/searchBar': (context) => SearchBarDemo(),
};

// 监听路由
// ignore: top_level_function_literal_block, missing_return
var onGenerateRoute = (RouteSettings settings) {
    //统一处理：
    final String name = settings.name;
    final Function pageContentBuilder = routes[name];
    if (pageContentBuilder != null) {
        if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
            return route;
        } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context)
            );
            return route;
        }
    }
};