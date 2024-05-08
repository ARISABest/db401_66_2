import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp());
}
@override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        textTheme: const TextTheme(
            button: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold))),
    home: Scaffold(
      body: MyPanel(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg1.jpg'), fit: BoxFit.cover)),
        child: const Report(),
      ),
    ),
    
    )}