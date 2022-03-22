import 'package:flutter/material.dart';
import 'package:tictest/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _scoreX = 0;
  int _scoreO = 0;
  bool _turnOfO = true;
  int _filledBoxes = 0;
  final List<String> _xOrOList = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _clearBoard();
            },
          )
        ],
        title: Text(
          'Tic Tac Toe',
          style: kCustomText(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
      backgroundColor: Colors.grey[900],

    );
  }

 void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        _xOrOList[i] = '';
      }
    });

    _filledBoxes = 0;
  }

}