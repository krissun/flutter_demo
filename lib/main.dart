import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter',
            initialRoute: '/',//初始化时加载的路由
            onGenerateRoute: onGenerateRoute,
            debugShowCheckedModeBanner: false,
        );
    }
}