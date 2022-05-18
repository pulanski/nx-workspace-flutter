import 'package:flutter/material.dart';

import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            ElevatedButton(
              child: const Text('Navigate'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
            ),
            IconButton(
                icon: Hero(
                  tag: imageUrl,
                  child: Image.network(imageUrl),
                ),
                iconSize: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                }),
          ],
        ));
  }
}