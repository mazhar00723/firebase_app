import 'package:flutter/material.dart';
import 'package:new_project/login.dart';
import 'package:new_project/signup.dart';
import 'package:new_project/welcome.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Welcome()
    );
  }
}
