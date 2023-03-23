
import 'package:flutter/material.dart';
import 'package:flutter_animation_examples/animations/custom_animated_opacity.dart';
import 'package:flutter_animation_examples/helpers/list_items.dart';
import 'package:flutter_animation_examples/pages/flutter_transform_page.dart';
import '../animations/custom_animated_container.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          ListItems(
              title: const Text('Animated Opacity'),
            navigation: (){
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const CustomAnimatedOpacity(),
              ),);
            },),
          const SizedBox(height: 20,),
          ListItems(
            title: const Text('Animated Container'),
            navigation: (){
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const CustomAnimatedContainer(),
              ),
              );
            },
          ),
          const SizedBox(height: 20,),
          ListItems(
            title: const Text('Transform'),
            navigation: (){
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const FlutterTransformPage(),
              ),
              );
            },
          ),
        ],
      ),
    );
  }
}
