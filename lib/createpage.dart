import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CreateSongs extends StatefulWidget {
  CreateSongs({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CreateSongs createState() => _CreateSongs();
}

class _CreateSongs extends State<CreateSongs> {
  String dropdownValue = 'Verse';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.cyan[100],
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        //title: Text(widget.title, textAlign: TextAlign.center),
        flexibleSpace: Image(
          image: AssetImage('assets/wood.JPG'),
          fit: BoxFit.cover,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.audiotrack,
              color: Colors.brown,
            ),
          )],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new DropdownButton<String>(
              items: <String>['Verse', 'Chorus', 'Bridge'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            )
          ],
        ),
      ),
    );
  }
}

