import 'package:flutter/material.dart';
import '../routes/CustomRoute.dart';

class FirstPage extends StatelessWidget {
	
	const FirstPage({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.redAccent,
            appBar: AppBar(
                title: Text('FirstPage', style: TextStyle(fontSize: 36),),
                backgroundColor: Colors.redAccent,
                elevation: 0,
            ),
            body: Center(
                child: MaterialButton(
                    child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                        size: 64,
                    ),
                    onPressed: () {
                        Navigator.of(context).push(CustomRoute(SecondPage()));
                    },
                ),
            ),
        );
    }
}

class SecondPage extends StatelessWidget {
	
	const SecondPage({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.green,
            appBar: AppBar(
                title: Text('SecondPage', style: TextStyle(fontSize: 36),),
                backgroundColor: Colors.green,
                leading: Container(),
                elevation: 0,
            ),
            body: Center(
                child: MaterialButton(
                    child: Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                        size: 64,
                    ),
                    onPressed: () {
                        Navigator.pop(context);
                    },
                ),
            ),
        );
    }
}