import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';

import 'package:tictactoe/core/constants.dart';
import 'package:tictactoe/core/theme_app.dart';

import 'pages/game_page.dart';

void main() {
  Function duringSplash;

  duringSplash = () {
    print('Something backgroung process');
    int a;
    a = 123 + 23;
    print(a);

    if (a > 100) {
      return 1;
    } else {
      return 2;
    }
  };

  var op = <int, Widget>{1: MyApp(), 2: MyApp()};

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CustomSplash(
      imagePath: 'lib/assets/yone.png',
      backGroundColor: Colors.deepOrange,
      animationEffect: 'zoom-in',
      logoSize: 200,
      home: MyApp(),
      customFunction: duringSplash,
      duration: 2500,
      type: CustomSplashType.StaticDuration,
      outputAndHome: op,
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: GAME_TITLE,
      theme: themeApp,
      home: GamePage(),
    );
  }
}
