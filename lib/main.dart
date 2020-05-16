import 'package:flutter/material.dart';
import 'package:chord_app/style.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,

              color: Colors.white,
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
              image: AssetImage("assets/schedule.png"),
              width: 150,
              height: 150,
            ),
            new SizedBox(
              width: 180.0,
              //height: 100.0,
              child: new RaisedButton(
                //onPressed: _goToScheduleScreen,
                child: Text(
                    "Chord Library",
                    style: Theme.of(context).textTheme.title
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                highlightColor: Colors.orangeAccent,
              ),
            ),
            new SizedBox(
              width: 180.0,
              //height: 100.0,
              child: new RaisedButton(
                //onPressed: _goToAddItemsScreen,
                child: Text(
                    "Sequence Generator",
                    style: Theme.of(context).textTheme.title
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                highlightColor: Colors.orangeAccent,
              ),
            ),
            new SizedBox(
              width: 180.0,
              //height: 100.0,
              child: new RaisedButton(
                //onPressed: _goToRemoveItemsScreen,
                child: Text(
                    "Saved Sequences",
                    style: Theme.of(context).textTheme.title
                ),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                highlightColor: Colors.orangeAccent,
              ),
            ),
            new SizedBox(
              width: 180.0,
              //height: 100.0,
              child: new RaisedButton(
                //onPressed: _goToSettingsScreen,
                child: Text(
                    "Settings",
                    style: Theme.of(context).textTheme.title
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