import 'package:flutter/material.dart';
import 'package:flutter_animation_examples/pages/implicit_animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Learn Flutter Animation'),),
        body: const ImplicitAnimationPage(),
      )
      //
    );
  }
}
