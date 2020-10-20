import 'package:batch3task1/register.dart';
import 'package:flutter/material.dart';

import 'my_profile.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.purple,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> MyProfile()));
                    },
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Register()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),

            ]),
    );
  }
}