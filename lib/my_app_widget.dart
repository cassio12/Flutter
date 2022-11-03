import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/my_app_controller.dart';
import 'package:ola_mundo/my_login_page.dart';

import 'my_home_page.dart';

class MyAppWiget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: MyAppController.instance,
     builder: (context, child) {
      return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            brightness: MyAppController.instance.isTroca 
            ? Brightness.dark 
            : Brightness.light 
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyLoginpage(),
          '/myHome': (context) => MyHomePage(), 
        },
      );
     }, 
    );
  }
}
