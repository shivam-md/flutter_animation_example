import 'package:flutter/material.dart';

class CustomAnimatedOpacity extends StatefulWidget {
  const CustomAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedOpacity> createState() => _CustomAnimatedOpacityState();
}

class _CustomAnimatedOpacityState extends State<CustomAnimatedOpacity> {
  late double _opacity = 1;
  final Duration _duration = const Duration(milliseconds: 500);
  String _buttonTitle = 'Disappear Container';

  void changeOpacityAndButton() {
    if (_opacity == 1) {
      _buttonTitle = 'Reappear Container';
      _opacity = 0;
    } else {
      _buttonTitle = 'Disappear Container';
      _opacity = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: _duration,
              opacity: _opacity,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    changeOpacityAndButton();
                  },
                );
              },
              child: Text(_buttonTitle),
            ),
          ],
        ),
      ),
    );
  }
}
