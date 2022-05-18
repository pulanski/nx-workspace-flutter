import 'package:flutter/material.dart';

import '../main.dart';
import 'home_screen.dart';

const imageUrl =
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Column(
        children: const [
          Center(
            child: Text('About'),
          ),
          Hero(
            tag: imageUrl,
            child: Image(
              image: NetworkImage(imageUrl),
            ),
          )
        ],
      ),
    );
  }
}