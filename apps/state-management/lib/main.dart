import 'package:flutter/material.dart';
import 'package:state_management/home_screen_stateful_widget.dart';

void main(List<String> args) {
  runApp(const App(
    appTitle: 'State Management in Flutter',
  ));
}

class App extends StatelessWidget {
  final String appTitle;

  const App({
    Key? key,
    required this.appTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
