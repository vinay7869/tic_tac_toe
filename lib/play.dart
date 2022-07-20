import 'package:flutter/material.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  List grid = [
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
    '-',
  ];
  var winner = '';
  var currentPlayer = 'X';

  void input(index) {
    if (grid[index] == '-') {
      setState(() {
        grid[index] = currentPlayer;
        bool gameEnded = result(grid[index]);

        if (!gameEnded) {
          currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
        }
      });
    }
  }

  bool formula(i1, i2, i3, sign) {
    if (grid[i1] == sign && grid[i2] == sign && grid[i3] == sign) {
      return true;
    } else {
      return false;
    }
  }

  bool result(currentsign) {
    if (formula(0, 1, 2, currentsign) ||
        formula(3, 4, 5, currentsign) ||
        formula(6, 7, 8, currentsign) ||
        formula(0, 3, 6, currentsign) ||
        formula(1, 4, 7, currentsign) ||
        formula(2, 5, 8, currentsign) ||
        formula(0, 4, 8, currentsign) ||
        formula(2, 4, 6, currentsign)) {
      setState(() {
        winner = currentPlayer;
      });
      return true;
    }

    return false;
  }

  void restart() {
    setState(() {
      winner = '';
      grid = [
        '-',
        '-',
        '-',
        '-',
        '-',
        '-',
        '-',
        '-',
        '-',
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Tic Tac Toe Beta',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            if (winner != '')
              Text('$winner won the game',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 27)),
            Container(
              constraints: const BoxConstraints(maxHeight: 300, maxWidth: 300),
              color: Colors.black,
              margin: const EdgeInsets.all(20),
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: grid.length,
                  itemBuilder: (context, index) => Material(
                        color: Colors.purple,
                        child: InkWell(
                          onTap: () {
                            input(index);
                          },
                          splashColor: Colors.pink,
                          child: Center(
                              child: Text(grid[index],
                                  style: const TextStyle(fontSize: 44))),
                        ),
                      )),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
                onPressed: () {
                  restart();
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink, padding: const EdgeInsets.all(10)),
                icon: const Icon(Icons.restart_alt_rounded),
                label: const Text('Play again',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22)))
          ],
        ),
      ),
    );
  }
}
