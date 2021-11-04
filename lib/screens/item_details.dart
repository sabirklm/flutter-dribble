import 'package:flutter/material.dart';
import 'package:gmsapp/data/all_data.dart';

class GameDetails extends StatefulWidget {
  static const id = "game";
  const GameDetails({Key? key}) : super(key: key);

  @override
  _GameDetailsState createState() => _GameDetailsState();
}

class _GameDetailsState extends State<GameDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: NetworkImage(imageUrl[0]),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              longText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Purchase for ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                primary: Color(0xfff44336),
                shape: const StadiumBorder(),
                padding: EdgeInsets.all(20),
                shadowColor: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
