import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<String, bool> score = {};
  final Map choices = {
    '🍏': Colors.green,
    '🍅': Colors.red,
    '🍌': Colors.yellow,
    '🍇': Colors.purple,
    '🥥': Colors.brown,
    '🥕': Colors.orange,
  };

  int seed = 0;

  AudioCache _audioController = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score ${score.length} / ${choices.length}'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: choices.keys.map((emoji) {
              return Draggable<String>(
                data: emoji,
                feedback: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: -5,
                        )
                      ],
                    ),
                    child: Emoji(emoji: emoji)),
                childWhenDragging: Emoji(emoji: '🌱'),
                child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Emoji extends StatelessWidget {
  final String emoji;
  const Emoji({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 100,
        child: Text(emoji,
            style: const TextStyle(color: Colors.black, fontSize: 50)),
      ),
    );
  }
}
