import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(WatchApp());
}

class WatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Watch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WatchScreen(),
    );
  }
}

class WatchScreen extends StatefulWidget {
  @override
  _WatchScreenState createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;
  bool _isRunning = false;

  String _formatTime(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    String milliseconds = (duration.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0');

    return '$minutes:$seconds.$milliseconds';
  }

  void _startTimer() {
    if (!_isRunning) {
      _stopwatch.start();
      _timer = Timer.periodic(Duration(milliseconds: 10), (_) {
        setState(() {});
      });
      _isRunning = true;
    }
  }

  void _stopTimer() {
    if (_isRunning) {
      _stopwatch.stop();
      _timer?.cancel();
      _isRunning = false;
    }
  }

  void _resetTimer() {
    _stopwatch.reset();
    setState(() {});
  }

  @override
  void dispose() {
    _stopwatch.stop();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Watch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _formatTime(_stopwatch.elapsed),
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _startTimer,
                  child: Text('Start'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _stopTimer,
                  child: Text('Stop'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _resetTimer,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
