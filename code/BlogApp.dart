import 'package:flutter/material.dart';

void main() {
  runApp(BloggingApp());
}

class BloggingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blogging App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/post': (context) => BlogPostPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> blogTitles = [
    'Title 1',
    'Title 2',
    'Title 3',
    'Title 4',
    'Title 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogging App'),
      ),
      body: ListView.builder(
        itemCount: blogTitles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(blogTitles[index]),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/post',
                arguments: blogTitles[index],
              );
            },
          );
        },
      ),
    );
  }
}

class BlogPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Sed vitae erat sit amet ligula facilisis euismod. Sed iaculis, '
              'neque nec fringilla posuere, velit odio tincidunt ipsum, '
              'eget fermentum dolor mauris nec mauris. Suspendisse efficitur '
              'lacus in turpis tempor, eu ultrices urna consequat. '
              'In varius consectetur justo in varius.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
