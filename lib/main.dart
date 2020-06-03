import 'package:flutter/material.dart';
import 'package:chord_app/nestedTabBarView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested Tab Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Nested Tab Bar Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.black38,
        child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.cyan[200],
            labelColor: Colors.cyanAccent,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.music_note),
              ),
              Tab(
                icon: Icon(Icons.hearing),
              ),
              Tab(
                icon: Icon(Icons.create),
              ),
            ]),
      ),
      body: TabBarView(
        children: <Widget>[
          NestedTabBar(),

          Center(
            child: Text("Ear Trainer Page Goes Here"),
          ),
          Center(
            child: Text("Song Creator Page Goes Here"),
          )
        ],
        controller: _tabController,
      ),
    );
  }
}