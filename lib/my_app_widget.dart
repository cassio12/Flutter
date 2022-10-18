import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_home_page.dart';

class MyAppWiget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: MyHomePage(),
    );
  }
}
