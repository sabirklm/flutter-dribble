import 'package:flutter/material.dart';
import 'package:gmsapp/data/all_data.dart';
import 'package:gmsapp/screens/item_details.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                gameString,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: iconList.length,
                itemBuilder: circularItemBuilder,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Trending now",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            GestureDetector(
              child: CardItem(
                imgUrl: imageUrl[0],
                price: 16.99,
              ),
              onTap: () {
                Navigator.pushNamed(context, GameDetails.id);
              },
            ),
            CardItem(
              imgUrl: imageUrl[1],
              price: 45.78,
            ),
            CardItem(
              imgUrl: imageUrl[0],
              price: 98.15,
            ),
          ],
        ),
      ),
    );
  }

  Widget circularItemBuilder(BuildContext context, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
              backgroundColor: Color(
                0xFFb3dbab,
              ),
              radius: 30,
              child: iconList[index]),
        ),
        Text(
          "Fighting",
        ),
      ],
    );
  }

  Widget cardItemBuilder(BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width / 10,
      height: 160,
      child: Card(
        color: Color(
          0xff252525,
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imgUrl;
  final double price;
  const CardItem({Key? key, required this.imgUrl, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      child: Card(
        color: Color(
          0xff252525,
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 140,
              child: Image(
                image: NetworkImage(
                  imgUrl,
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Text(
                    "Fortnite",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "36K reviews",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "\$ $price",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
