import 'package:flutter/material.dart';
import 'package:new_project/signup.dart';

import 'login.dart';class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              style: TextStyle(fontSize: 40, color: Colors.black),
              'Welcome'),
          Text(
              style: TextStyle(fontSize: 20, color: Colors.grey),
              ' Slash Flutter provides extraordinary flutter tutorials'),
          Text(
              style: TextStyle(fontSize: 20, color: Colors.grey),
              'Do subscribe!',),
          SizedBox(
            height: 100,
          ),
          Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuCLPrWpjD5f-szFQMvZohz6SP5Qvlz94WMQ&usqp=CAU'),
          SizedBox(
            height: 100,
          ),
          ElevatedButton(
            style:
            ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
            child: Container(
              width: 150,
              height: 40,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Text('Login'),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style:
            ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signup()),
              );
            },
            child: Container(
              width: 150,
              height: 40,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Sign up'),
            ),
          ),
        ],
      ),
    );
  }
}
