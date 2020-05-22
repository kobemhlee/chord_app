import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:chord_app/createpage.dart';

class MySongs extends StatefulWidget {
  MySongs({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MySongs createState() => _MySongs();
}

class _MySongs extends State<MySongs> {

  void _goToCreateSongs() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateSongs(title: 'Create Songs')),
      );
    });
  }

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
            new SizedBox(
              width: 100.0,
              //height: 100.0,
              child: new RaisedButton(
                onPressed: _goToCreateSongs,
                child: Text(
                    "Create",
                    //style: Theme.of(context).textTheme.title
                    style: TextStyle(fontFamily: 'Montserrat')
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                highlightColor: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

