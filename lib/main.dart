import 'package:flutter/material.dart';
import 'package:chord_app/style.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:chord_app/chordlibpage.dart';
import 'package:chord_app/mysongspage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chord App',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: TextTheme(title: AppBarTextStyle)
      ),
      home: MyHomePage(title: 'Chord App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioCache player = AudioCache();

  void _incrementCounter() {
    setState(() {
      player.load('assets/sample.mp3');
      player.play('assets/sample.mp3');
    });
  }

  void _goToChordLibrary() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChordLibrary(title: 'Key of C')),
      );
    });
  }

  void _goToMySongs() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MySongs(title: 'My Songs')),
      );
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
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
              Icons.home,
              color: Colors.brown[800],
            ),
          )],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'EZ Guitar',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 50, // 26
                  color: Colors.black,
                )
            ),
            Image(
              image: AssetImage("assets/chord_app_logo.png"),
              width: 120,
              height: 128,
            ),
            new SizedBox(
              width: 150.0,
              //height: 100.0,
              child: new RaisedButton(
                onPressed: _goToChordLibrary,
                child: Text(
                    "Chord Library",
                    //style: Theme.of(context).textTheme.title
                    style: TextStyle(fontFamily: 'Montserrat')
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                highlightColor: Colors.orangeAccent,
              ),
            ),
            new SizedBox(
              width: 150.0,
              //height: 100.0,
              child: new RaisedButton(
                onPressed: _goToMySongs,
                child: Text(
                    "My Songs",
                    //style: Theme.of(context).textTheme.title
                    style: TextStyle(fontFamily: 'Montserrat')
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                highlightColor: Colors.orangeAccent,
              ),
            ),
            new SizedBox(
              width: 150.0,
              //height: 100.0,
              child: new RaisedButton(
                onPressed: _incrementCounter,
                child: Text(
                    "Ear Trainer",
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