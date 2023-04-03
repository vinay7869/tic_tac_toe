import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Help'),
          backgroundColor: Colors.purple,
        ),
        body: ListView(
          children: const <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '* Tic Tac Toe is friendly game played between two players',
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("* The first player will be 'X' and the second will be 'Y'",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "* In order to win the game a player must align the given symbols 'Vertically' 'Horizontally' or 'Cross functionally' ",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  '* If a player manages to do so then he will be declared the winner',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "* But if both the players fail to align the symbols then the game is declared 'Drawn'",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
          ],
        ));
  }
}
