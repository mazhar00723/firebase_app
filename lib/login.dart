import 'package:flutter/material.dart';
import 'package:new_project/signup.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              'Login'),
          Text(
              style: TextStyle(fontSize: 20, color: Colors.grey),
              'Login to your account'),
          SizedBox(
            height: 50,
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
              child: Text('Login'),
            ),
          ),
          SizedBox(
            height: 20,
          ),


          Row(
            children: [
              Text(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  'Dont have an account ?'),
              TextButton(
                child: Text(
                  ' Sign up',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
                );},
                // style: TextButton.styleFrom(
                //     foregroundColor: Colors.red,
                //     elevation: 2,
                //     backgroundColor: Colors.amber),
              ),
            ],
          ),
    Image.network(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP3gWYUmY_I-I37RW_vB3e7mInPkx0dVH0kw&usqp=CAU')

        ],
      ),
    );
  }
}

