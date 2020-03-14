import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatelessWidget {

	const FrostedGlassDemo({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Stack(
                children: <Widget>[
                    ConstrainedBox(
                        constraints: BoxConstraints.expand(),
                        child: Image.network(
                            'https://img1.mukewang.com/5dc3c6430962b39f06000338-240-135.png',
                            fit: BoxFit.cover,
                        ),
                    ),
                    Center(
                        child: ClipRect(
                            child: BackdropFilter(
                                child: Opacity(
                                    opacity: 0.5,
                                    child: Container(
                                        width: 500,
                                        height: 700,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                        ),
                                        child: Center(
                                            child: Text(
                                                '毛玻璃效果',
                                                style: Theme.of(context).textTheme.display2,
                                            ),
                                        ),
                                    ),
                                ),
                                filter: ImageFilter.blur(
                                    sigmaX: 5,
                                    sigmaY: 5,
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}
