
import 'dart:math';

import 'package:flutter/material.dart';

class FlutterTransformPage extends StatelessWidget {
  const FlutterTransformPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transform Widget'),),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Transform.scale(
            scale: 1,
            child: Align(
              child: Container(
                //margin: EdgeInsets.all(10),
                height: 70,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
