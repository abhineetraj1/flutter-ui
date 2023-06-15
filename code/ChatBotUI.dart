import 'package:flutter/material.dart';

void main() {
  runApp(ChatBotApp());
}

class ChatBotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Bot',
      theme: ThemeData(
        brightness: Brightness.dark, // Set dark theme
        primarySwatch: Colors.blue,
      ),
      home: ChatBotScreen(),
    );
  }
}

class ChatBotScreen extends StatefulWidget {
  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  TextEditingController _controller = TextEditingController();
  List<String> _messages = [];

  void _handleSubmitted(String text) {
    _controller.clear();
    setState(() {
      // Simulate bot response
      _messages.add(getBotResponse(text));
    });
  }

  String getBotResponse(String message) {
    // Here you can implement the logic to generate the bot's response
    // based on the user's input.
    // For now, let's just echo the user's message.
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Bot'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.grey[900], // Set background color for messages
              child: ListView.builder(
                reverse: true, // Reverse the order to show latest messages at the bottom
                itemCount: _messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      _messages[_messages.length - index - 1],
                      style: TextStyle(color: Colors.white), // Set text color for messages
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            color: Colors.grey[800], // Set background color for text input box
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: _handleSubmitted,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      hintStyle: TextStyle(color: Colors.white70), // Set text color for hint
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
