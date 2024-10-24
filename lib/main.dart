import 'package:chat/pages/auth_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.blue[900],
            secondary: Colors.red,
            outline: Colors.white,
          ),
          canvasColor: Colors.white,
      ),
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
