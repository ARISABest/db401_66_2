import 'package:flutter/material.dart';
 
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
           constraints: const BoxConstraints.expand(),
           decoration: const BoxDecoration(
            image: AssetImage('image/cloud.gif'),
           )
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
