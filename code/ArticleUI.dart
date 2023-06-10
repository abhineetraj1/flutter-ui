import 'package:flutter/material.dart';

void main() {
  runApp(ArticleApp());
}

class ArticleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Article App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ArticleScreen(),
    );
  }
}

class ArticleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://i0.wp.com/www.alphr.com/wp-content/uploads/2022/03/How-to-Find-the-Model-Number-on-a-Laptop.jpg',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Gaming Laptop',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '''
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                Sed ac metus a lectus interdum commodo. Vestibulum et 
                vestibulum mauris, vitae suscipit enim. Aliquam ut 
                ultrices tortor. Curabitur tincidunt euismod mauris, at 
                convallis tortor vulputate id. Fusce pellentesque risus 
                sed sagittis euismod. Sed venenatis bibendum eleifend. 
                Morbi consectetur posuere ex, non finibus nulla aliquam 
                id. Nulla non lacinia massa. Mauris vestibulum pellentesque 
                dolor vitae maximus. Aenean sodales cursus velit ac 
                vulputate. Pellentesque habitant morbi tristique senectus 
                et netus et malesuada fames ac turpis egestas.
                ''',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
