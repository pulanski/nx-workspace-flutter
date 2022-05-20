import 'package:basic_10_min_game/screens/game_core.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../helpers/joypad.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  final GameCore game = GameCore();

  HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        body: Stack(
          children: [
            GameWidget(game: game),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child:
                    Joypad(onDirectionChanged: game.onJoypadDirectionChanged),
              ),
            )
          ],
        ))
    );
  }
}
