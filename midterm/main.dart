import 'package:flutter/material.dart';

void main() {
  runApp(const bgApp());
}
    home: Scaffold(
        body: Container()
          constraints: const BoxConstraints.expand()
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('bg/bg1.jpg'), fit: BoxFit.cover)),
          child: const Report(),
    ),
    theme: ThemeData(
        textTheme: const TextTheme(
            button: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold))),
  ));
}
