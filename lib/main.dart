import 'package:flutter/material.dart';
import 'lesson1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return MaterialApp(
      title: title,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blueGrey[100]
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('lesson1'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => Lesson1()));
              },
            ),
            new ListTile(
              title: new Text('lesson2'),
//              onTap: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Lesson1()));
//              },
            )

          ],
        ),
      ),
    );
  }
}