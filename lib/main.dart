import 'package:flutter/material.dart';
import 'package:lol_clone/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lol clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage()
    );
  }
}