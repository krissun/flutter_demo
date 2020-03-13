import 'package:flutter/material.dart';
import '../pages/tabs/Tabs.dart';
import '../pages/UserPage.dart';
import '../FormDemo.dart';
import '../SwiperDemo.dart';
import '../DialogDemo.dart';

// 配置路由
final routes = {
    '/': (context) => Tabs(),
    '/user': (context) => UserPage(),
    '/form': (context) => FormDemo(),
    '/swiper': (context) => SwiperDemo(),
    '/dialog': (context) => DialogDemo(),
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