import 'package:flutter/material.dart';
import 'package:gmsapp/screens/games_screen.dart';
import 'package:gmsapp/screens/item_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: GameScreen(),
      routes: {
        GameDetails.id: (context) => GameDetails(),
      },
    );
  }
}
