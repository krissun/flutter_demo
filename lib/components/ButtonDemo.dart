import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

    final String text;
    final double width;
    final double height;
    final Color color;
    final Color textColor;
    final pressed;

    const CustomButton({Key key, this.text = '', this.width = 100, this.height = 40, this.color = Colors.lightBlue, this.textColor = Colors.white, this.pressed}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            width: this.width,
            height: this.height,
            child: RaisedButton(
                child: Text('${this.text}'),
                color: this.color,
                textColor: this.textColor,
                onPressed: this.pressed,
            ),
        );
    }
}