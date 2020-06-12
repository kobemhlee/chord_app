import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CreateSongs extends StatefulWidget {
  CreateSongs({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CreateSongs createState() => _CreateSongs();
}

class _CreateSongs extends State<CreateSongs> {
  String _value = 'Verse';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black87,
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
              Icons.edit,
              color: Colors.black87,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.save_alt,
              color: Colors.black87,
            ),
          )],
        title: new Theme(
            child: new DropdownButtonHideUnderline(
              child: new DropdownButton<String>(
                value: _value,
                items: <DropdownMenuItem<String>>[
                  new DropdownMenuItem(
                    child: new Text('Verse'),
                    value: 'Verse',
                  ),
                  new DropdownMenuItem(
                    child: new Text('Chorus'),
                    value: 'Chorus',
                  ),
                  new DropdownMenuItem(
                    child: new Text('Bridge'),
                    value: 'Bridge',
                  ),
                ],
                onChanged: (String value) {
                  setState(() => _value = value);
                },
              ),
            ),
            data: new ThemeData.dark()
        ),
      ),
      body: Center(

      ),
    );
  }
}