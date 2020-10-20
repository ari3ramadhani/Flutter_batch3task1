import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool mentor = false;
  bool mentee = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text(
              "My Profile",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(
                Icons.settings,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
        body: Stack(children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.deepPurple[500],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: Center(
                  child: TextField(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      labelText: "Username",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      labelText: "Email",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(width: 300, child: Text("Available to mentor")),
                    Checkbox(
                      value: mentor,
                      onChanged: (bool value) {
                        setState(() {
                          mentor = value;
                        });
                      },
                    ),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(width: 300, child: Text("Needs mentoring")),
                    Checkbox(
                      value: mentee,
                      onChanged: (bool value) {
                        setState(() {
                          mentee = value;
                        });
                      },
                    ),
                  ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      labelText: "Bio",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      labelText: "Stack Username",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      labelText: "Location",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                      labelText: "Occupation",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w200),
                      labelStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10,10,10,10),
              child: FloatingActionButton(
                onPressed: () => {},
                child: Icon(Icons.edit),
              ),
            ),
          )
        ]),
    );
  }
}