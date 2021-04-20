import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),
));

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Rihan ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[500],),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[200],
                 letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
            'Rihan Khan',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Rihan Level',
              style: TextStyle(
                  color: Colors.grey[200],
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28.0,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[200],
                ),
                SizedBox(width: 10.0),
                Text(
                  'rihan@gmail.com',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[200],
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
