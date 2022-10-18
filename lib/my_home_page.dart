import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/my_app_controller.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int cont = 0;
  String title = 'Home page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            title,
            )
        ),
      body: Center(
          child: Switch(
          value: MyAppController.instance.isTroca,
          onChanged: (value) {
            MyAppController.instance.changeTheme();
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
           setState(() {
              cont++;              
            });
        },
      ),
    );
  }
}