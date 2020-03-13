import 'package:flutter/material.dart';
import 'ButtonDemo.dart';

class CustomAlertDialog extends Dialog {

    final String title;
    final String content;

    CustomAlertDialog({Key key, this.title, this.content}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Material(
            type: MaterialType.transparency,
            child: Center(
                child: Container(
                    width: 300,
                    height: 180,
                    color: Colors.white,
                    child: Column(
                        children: <Widget>[
                            Container(
                                height: 40,
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        '${this.title}',
                                    ),
                                ),
                            ),
                            Divider(),
                            Container(
                                height: 40,
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                        '${this.content}',
                                    ),
                                ),
                            ),
                            Divider(),
                            Container(
                                height: 60,
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: CustomButton(
                                        text: '确定',
                                        color: Colors.lightBlue,
                                        textColor: Colors.white,
                                        pressed: () {
                                            Navigator.pop(context);
                                        },
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}