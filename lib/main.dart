import 'package:flutter/material.dart';
import 'package:sofa_app/screens/getting_started.dart';
import 'package:sofa_app/screens/login.dart';
import 'package:sofa_app/screens/navpages/main_page.dart';
import 'package:sofa_app/screens/prouduct.dart';
import 'package:sofa_app/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sofa',
      theme: ThemeData(),
      home: SignUp(),
      routes: {
        'signup': (context) => SignUp(),
        'login': (context) => Login(),
        'mainav': (context) => MainPage(),
        'details': (context) => Product(),
      },
    );
  }
}
