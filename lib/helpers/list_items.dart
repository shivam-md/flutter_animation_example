
import 'package:flutter/material.dart';

import '../animations/custom_animated_opacity.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key, required this.title, required this.navigation}) : super(key: key);
  final Text title;
  final Function navigation;


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ListTile(
        title: title,
        onTap: (){
          navigation();
        },

      ),
    );
  }
}
