import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ChordLibrary extends StatefulWidget {
  ChordLibrary({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChordLibrary createState() => _ChordLibrary();
}

class _ChordLibrary extends State<ChordLibrary> {

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
                Icons.vpn_key,
                color: Colors.brown,
              ),
            )],
        ),
        body: PageView(
          children: <Widget>[
            keyChooser()
          ],
        )
    );
  }
}


Widget keyChooser(){
  List<int> colorCodes = <int>[300, 100];

  List<String> test = <String>["C", "C", "D", "E", "G", "A", "B"];

  return ListView.separated(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    padding: const EdgeInsets.all(20),
    itemCount: test.length,
    itemBuilder: (BuildContext context, int index) {
      if (index == 0){
        return Container(
            height: 80,
            color: Colors.white70,
            child: Center(child: Text(
                'Pick a Key',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 39, // 26
                  color: Colors.black,
                )
            ),)
          //Text('Item $index: ${mondayEvents[index]}')),
          //Center(child: Text('Item $index: ${mondayEvents[index]}')),
        );
      }
      else
        return Container(
            height: 80,
            color: Colors.amber[colorCodes[index%2]],
            child: InkWell(
                child: Center(child: Text('Item $index: ${test[index]}')))
          //Text('Item $index: ${mondayEvents[index]}')),
          //Center(child: Text('Item $index: ${mondayEvents[index]}')),
        );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}


