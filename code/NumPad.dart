import 'package:flutter/material.dart';

void main() => runApp(KeyboardApp());

class KeyboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keyboard',
      theme: ThemeData.dark(),
      home: KeyboardScreen(),
    );
  }
}

class KeyboardScreen extends StatefulWidget {
  @override
  _KeyboardScreenState createState() => _KeyboardScreenState();
}

class _KeyboardScreenState extends State<KeyboardScreen> {
  String _input = '';

  void _addToInput(String value) {
    setState(() {
      _input += value;
    });
  }

  void _clearInput() {
    setState(() {
      _input = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keyboard'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Text(
                _input,
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
          Divider(
            height: 2,
            color: Colors.white,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  buildRow(['1', '2', '3']),
                  buildRow(['4', '5', '6']),
                  buildRow(['7', '8', '9']),
                  buildRow(['0', '.', '←']),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow(List<String> keys) {
    return Expanded(
      child: Row(
        children: keys.map((key) {
          return Expanded(
            child: InkWell(
              onTap: () {
                if (key == '←') {
                  if (_input.isNotEmpty) {
                    setState(() {
                      _input = _input.substring(0, _input.length - 1);
                    });
                  }
                } else {
                  _addToInput(key);
                }
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  key,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
