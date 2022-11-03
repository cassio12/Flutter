import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/my_app_controller.dart';

class MyToggle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(
          value: MyAppController.instance.isTroca,
          onChanged: (value) {
            MyAppController.instance.changeTheme();
          }
        );
  }
}

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
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.asset('../assets/img/perfil.jpg')
              ),
              accountName: Text('Cassio Luis'), 
              accountEmail: Text('Cassio.luis@gmail.com')
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Config'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Quit'),
              onTap: () => Navigator.of(context).pushReplacementNamed('/'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
              title,
            ),
        actions: [
            MyToggle(),
          ]
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                'Contador: $cont',
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
              child: MyToggle()
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    color: Colors.red,
                    ),
                  ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    color: Colors.pink,
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
           setState(() {
              cont++;             
            });
        },
      ),
    );
  }
}