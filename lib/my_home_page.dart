import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        child: GestureDetector(
          child: Text(
            'Contador: $cont',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
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