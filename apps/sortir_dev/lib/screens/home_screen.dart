import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // _analyticsEvent() {
  //   analytics.logEvent(
  //     name: 'home_screen_opened',
  //     parameters: <String, dynamic>{
  //       'name': 'HomeScreen',
  //       'seed': DateTime.now().millisecondsSinceEpoch,
  //     },
  //   );
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sortir_dev'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              // _analyticsEvent();
              Navigator.pushNamed(context, '/list');
            },
            tooltip: 'Saved Suggestions',
          ),
        ],
      ),
    );
  }
}
