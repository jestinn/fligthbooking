import 'package:flutter/material.dart';

import 'flightSearch.dart';
import 'getstart.dart';
import 'home_Fly.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
              .copyWith(background: Colors.white.withOpacity(.95))),
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
