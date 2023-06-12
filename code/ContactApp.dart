import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatefulWidget {
  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contacts = generateRandomContacts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(contacts[index].name),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: AlignmentDirectional.centerEnd,
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                contacts.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Contact deleted.'),
                ),
              );
            },
            child: ListTile(
              title: Text(contacts[index].name),
              subtitle: Text(contacts[index].phoneNumber),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ContactDetailScreen(contacts[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddContactDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddContactDialog(BuildContext context) {
    String name = '';
    String phoneNumber = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Contact'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                onChanged: (value) {
                  phoneNumber = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  contacts.add(Contact(name, phoneNumber));
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}

class ContactDetailScreen extends StatelessWidget {
  final Contact contact;

  ContactDetailScreen(this.contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${contact.name}'),
            SizedBox(height: 16.0),
            Text('Phone Number: ${contact.phoneNumber}'),
          ],
        ),
      ),
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact(this.name, this.phoneNumber);
}

List<Contact> generateRandomContacts() {
  final List<Contact> contacts = [];

  final List<String> names = [
    'John Doe',
    'Jane Smith',
    'Alex Johnson',
    'Emily Davis',
    'Michael Brown',
    'Olivia Wilson',
    'William Lee',
    'Sophia Moore',
    'Daniel Taylor',
    'Emma Anderson',
  ];

  final Random random = Random();

  for (var name in names) {
    final phoneNumber = '+1 ${random.nextInt(1000000000)}';
    contacts.add(Contact(name, phoneNumber));
  }

  return contacts;
}
