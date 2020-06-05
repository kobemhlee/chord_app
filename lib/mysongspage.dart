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
        backgroundColor: Colors.black87,
        resizeToAvoidBottomPadding: false,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 450, right: MediaQuery.of(context).size.width*0.7),
              width: 70,
              height: 70,
              child: FloatingActionButton(
                child: Icon(
                    Icons.add,
                    color: Colors.black87,
                    size: 65,
                ),
                backgroundColor: Colors.orange,
                onPressed: _goToCreateSongs,
              ),
            )
          ],
        ),
      ),
    );
  }
}

