import 'package:flutter/material.dart';

import 'login.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              style: TextStyle(fontSize: 40, color: Colors.black),
              'Sign up'),
          Text(
              style: TextStyle(fontSize: 20, color: Colors.grey),
              'Create an account ,its free'),
          SizedBox(
            height: 50,
          ),
          new Align(alignment: Alignment.centerLeft, child: new Text(style: TextStyle(fontSize: 15, color: Colors.black),"Username")),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your name :',
            ),
          ),
          new Align(alignment: Alignment.centerLeft, child: new Text(style: TextStyle(fontSize: 15, color: Colors.black),"Email")),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your e mail:',
            ),
          ),
          new Align(alignment: Alignment.centerLeft, child: new Text(style: TextStyle(fontSize: 15, color: Colors.black),"Password")),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password:',
            ),
          ),
          new Align(alignment: Alignment.centerLeft, child: new Text(style: TextStyle(fontSize: 15, color: Colors.black),"Confirm Password",)),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm  your password.:',
            ),
          ),
          SizedBox(
            height: 50,
          ),

          ElevatedButton(
            style:
            ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {

            },
            child: Container(
              width: 150,
              height: 40,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Text('Sign up'),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Text(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  'Already have an account ? '),

              TextButton(
                child: Text(
                  ' Login',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
