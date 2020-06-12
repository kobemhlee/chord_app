import 'package:flutter/material.dart';
import 'package:chord_app/nestedTabBarView.dart';
import 'package:chord_app/mysongspage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Home'),
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
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: [
                    new Container(
                      color: Color(0xff212128),
                      child: ListView(
                        padding: EdgeInsets.all(20.0),
                        children: [
                          Text( " ", textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 28
                              )),
                          Text( "i", textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 41
                              )),

                        ]
                      )
                    ),
                    new Container(
                      color: Colors.orange,
                    ),
                    MySongs()
                  ],
                  controller: _tabController,
                ),
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Color(0xffF0BD74),
                  ),
                )
              ]
            ),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(45.0),
              child: AppBar(
                elevation: 0,
                title: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                          "ez guitar", textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 41
                          )),
                    )
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.whatshot,
                      color: Colors.brown[800],
                    ),
                  )
                ],
                backgroundColor: Color(0xffF0BD74),
              ),
            ),
            backgroundColor: Colors.white,
            bottomNavigationBar: Material(
              color: Color(0xffB2F2C3),
              child: TabBar(
                  controller: _tabController,
                  indicatorColor: Color(0xff212128),
                  labelColor: Color(0xff212128),
                  unselectedLabelColor: Colors.black54,
                  tabs: <Widget>[
                    Tab(
                      text: 'chord library',
                      icon: Icon(Icons.music_note, size: 22),
                    ),
                    Tab(
                      text: 'ear trainer',
                      icon: Icon(Icons.hearing),
                    ),
                    Tab(
                      text: 'my songs',
                      icon: Icon(Icons.create),
                    ),
                  ]),
            ),
          )
        )
    );
  }
}