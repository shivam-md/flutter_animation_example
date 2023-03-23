

import 'package:flutter/material.dart';
import 'package:flutter_animation_examples/helpers/custom_list_view.dart';

class ImplicitAnimationPage extends StatelessWidget {
  const ImplicitAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Padding(
        padding: EdgeInsets.all(20),
        child: CustomListView(),
    );
  }
}
