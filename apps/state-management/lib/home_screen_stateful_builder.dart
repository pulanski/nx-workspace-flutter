import 'package:flutter/material.dart';

class HomeScreenStatefulBuilder extends StatelessWidget {
  int _count = 0;

  const HomeScreenStatefulBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) => Scaffold(
        body: Text('$_count'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}
