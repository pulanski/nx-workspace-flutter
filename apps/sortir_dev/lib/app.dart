// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sortir_dev/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('Rebuilt App!');
    return
    // return MultiProvider(
    //   providers: const [
    //     // StreamProvider<User>.value(
    //     //   value: FirebaseAuth.instance.onAuthStateChanged,
    //     //   initialData: null,
    //     // ),
    //   ],
    //   child: const
    MaterialApp(
        title: 'sortir_dev',
        home: HomeScreen(),
      );
  }
}
