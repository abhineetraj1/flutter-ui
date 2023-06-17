import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedViewIndex = 0;

  List<Widget> _viewOptions = [
    Text('Home View'),
    Text('Profile View'),
    Text('Settings View'),
  ];

  void _selectView(int index) {
    setState(() {
      _selectedViewIndex = index;
    });
    Navigator.pop(context); // Closes the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: _viewOptions.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('View ${index + 1}'),
              selected: index == _selectedViewIndex,
              onTap: () {
                _selectView(index);
              },
            );
          },
        ),
      ),
      body: Center(
        child: _viewOptions.elementAt(_selectedViewIndex),
      ),
    );
  }
}
