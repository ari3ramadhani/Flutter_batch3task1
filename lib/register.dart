import 'package:flutter/material.dart';

import 'my_profile.dart';


class Register extends StatefulWidget {

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isHidePassword = true;
  bool _isConfirmPassword = true;

  void _togglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  void _togglePassword2() {
    setState(() {
      _isConfirmPassword = !_isConfirmPassword;
    });
  }

  bool mentor = false;
  bool mentee = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text("Register"),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Name",
                    hintText: 'Name',
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200),
                    labelStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Username",
                    hintText: 'Username',
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200),
                    labelStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Email",
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200),
                    labelStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  obscureText: _isHidePassword,
                  decoration: InputDecoration(
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Enter password",
                    hintText: 'Enter password',
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200),
                    labelStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _togglePassword();
                      },
                      child: Icon(
                        _isHidePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: _isHidePassword ? Colors.grey : Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  obscureText: _isConfirmPassword,
                  decoration: InputDecoration(
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Confirm password",
                    hintText: 'Confirm password',
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w200),
                    labelStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _togglePassword2();
                      },
                      child: Icon(
                        _isConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: _isConfirmPassword ? Colors.grey : Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(child: Text("Availe to be a")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: mentor,
                onChanged: (bool value) {
                  setState(() {
                    mentor = value;
                  });
                },
              ),
              Text("mentor"),
              Checkbox(
                value: mentee,
                onChanged: (bool value) {
                  setState(() {
                    mentee = value;
                  });
                },
              ),
              Text("mentee"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: mentor,
                onChanged: (bool value) {
                  setState(() {
                    mentor = value;
                  });
                },
              ),
              Container(
                  width: 300,
                  child: Text(
                      "I affirm that I have read and accept to be bound by the AnitaB org code of conduct terms and Privacy Policy Futher Iconsent to use of my information for the started purpose")),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> MyProfile()));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                textColor: Colors.black,
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}