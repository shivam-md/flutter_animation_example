import 'dart:math';

import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedContainer> createState() => _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {

  final Duration _duration = const Duration(milliseconds: 500);
  final _buttonTitle = 'Animate Container';
  double _height = 70;
  double _width = 70;
  double _border = 25;
  Color _color = Colors.blueGrey;
  double _margin = 40;
  double _angle = 0;

  double randomDouble({double max = 80}){
    return Random().nextDouble() * max;
  }

  Color randomColor(){
    return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container'),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: _height,
                width: _width,
                margin: EdgeInsets.all(_margin),
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateZ(_angle),
                transformAlignment: FractionalOffset.center,
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(_border),

                ),
                duration: _duration,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _color = randomColor();
                },);
              },
              child: const Text('Change Color'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _height = randomDouble(max: 200);
                  _width = randomDouble(max: 200);
                  _border = randomDouble();
                  _margin = randomDouble();
                },);
              },
              child: const Text('Change Size'),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _angle = Random().nextInt(360) + 1;
                },);
              },
              child: const Text('Transform'),
            ),

          ],
        ),
      ),
    );
  }
}
