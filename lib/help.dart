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
      body: const Center(
        child:
            Text('Itna bhi nahi aata to marja', style: TextStyle(fontSize: 33)),
      ),
    );
  }
}
