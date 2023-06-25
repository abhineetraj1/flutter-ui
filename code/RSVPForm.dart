import 'package:flutter/material.dart';

void main() {
  runApp(RSVPForm());
}

class RSVPForm extends StatefulWidget {
  @override
  _RSVPFormState createState() => _RSVPFormState();
}

class _RSVPFormState extends State<RSVPForm> {
  String? _name;
  String? _gender;
  int? _age;
  String? _occupation;
  String? _designation;
  String? _educationLevel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(
          primary: Colors.grey[800]!,
          secondary: Colors.orange,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('RSVP Form'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Gender',
                style: TextStyle(fontSize: 16),
              ),
              DropdownButton<String>(
                value: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  });
                },
                items: <String>['Male', 'Female'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),
              Text(
                'Age',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _age = int.tryParse(value);
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Occupation',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _occupation = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Designation',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _designation = value;
                  });
                },
              ),
              SizedBox(height: 16),
              Text(
                'Education Level',
                style: TextStyle(fontSize: 16),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    _educationLevel = value;
                  });
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  // Handle form submission
                  // You can access the form values here (_name, _gender, _age, _occupation, _designation, _educationLevel)
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
