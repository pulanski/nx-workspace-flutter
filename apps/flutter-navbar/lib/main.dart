// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_navbar/screens/home_screen.dart';
import 'package:flutter_navbar/widgets/card.dart';
import 'package:flutter_navbar/widgets/layouts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(const MyApp(
    appTitle: 'Flutter Navbar',
  ));
}

class MyApp extends StatelessWidget {
  final String appTitle;

  const MyApp({Key? key, required this.appTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: const Layouts(),
    );
  }
}
