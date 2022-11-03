import 'dart:html';

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/my_home_page.dart';

class MyLoginpage extends StatefulWidget {
  const MyLoginpage({super.key});

  @override
  State<MyLoginpage> createState() => _MyLoginpageState();
}

class _MyLoginpageState extends State<MyLoginpage> {
  String email = '';
  String senha = ''; 

  Widget _boddy(){
    return Column(
        children: [
          SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150.0,
                    height: 150.0,
                    child: Image.asset('../assets/img/logo.png'),
                  ),
                  Container(height: 20.0),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                      child: Column(
                        children: [
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              email = value;
                            } ,
                          ),
                          Container(height: 20.0,),
                          TextField(
                            onChanged: (String value) {
                              senha = value;
                            },
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Container(height: 20.0,),
                          SizedBox(
                            width: double.infinity,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                                backgroundColor: Theme.of(context).colorScheme.primary,
                              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                              onPressed: () {
                                if(email == 'cassio.luis@gmail.com' && senha == '1234'){
                                  Navigator.of(context).pushReplacementNamed('/myHome');
                                } else {
                                  print('Errado');
                                }
                              },
                              child: const Text(
                                'Entrar', 
                                style: TextStyle(
                                  fontSize: 20.0
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ),
        ]
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              '../assets/img/papel.webp', 
              fit: BoxFit.cover,
            ),
          ),
          Container(color: Colors.blueAccent.withOpacity(0.6),),
          _boddy(),
        ],
      ) 
    );
  }
}
