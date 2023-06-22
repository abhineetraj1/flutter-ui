import 'package:flutter/material.dart';

class SliderApp extends StatefulWidget {
  @override
  _SliderAppState createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Apply dark theme
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slider App'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: _sliderValue,
                min: 0.0,
                max: 100.0,
                onChanged: (newValue) {
                  setState(() {
                    _sliderValue = newValue;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text(
                'Slider Value: ${_sliderValue.toStringAsFixed(1)}',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(SliderApp());
}
