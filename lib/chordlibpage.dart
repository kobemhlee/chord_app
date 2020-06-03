import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:getflutter/getflutter.dart';

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
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Image(
               // image: AssetImage("assets/picktest.png"),
               // width: 120,
               // height: 128,
              //),
              GFButton(
                onPressed: (){},
                text: "C",
                  textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                shape: GFButtonShape.pills,
                color: Colors.white,
                icon: Icon(Icons.vpn_key),
              ),
              GFButton(
                  onPressed: (){},
                  text: "D",
                  textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                  shape: GFButtonShape.pills,
                  color: Colors.white,
                  icon: Icon(Icons.vpn_key),
              ),
              GFButton(
                  onPressed: (){},
                  text: "E",
                  textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                  shape: GFButtonShape.pills,
                  color: Colors.white,
                  icon: Icon(Icons.vpn_key),

              ),
              GFButton(
                  onPressed: (){},
                  text: "G",
                  textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                  shape: GFButtonShape.pills,
                  color: Colors.white,
                  icon: Icon(Icons.vpn_key),
              ),
              GFButton(
                  onPressed: (){},
                  text: "A",
                  textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                  shape: GFButtonShape.pills,
                  color: Colors.white,
                  icon: Icon(Icons.vpn_key),
              ),
              GFButton(
                  onPressed: (){},
                  text: "B",
                  textStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
                  shape: GFButtonShape.pills,
                  color: Colors.white,
                  icon: Icon(Icons.vpn_key),
              ),
            ],
          ),
        ),
    );
  }
}


Widget keyChooser(){
  List<int> colorCodes = <int>[300, 100];

  List<String> test = <String>["C", "D", "E", "G", "A", "B"];

  return ListView.separated(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    padding: const EdgeInsets.all(20),
    itemCount: test.length,
    itemBuilder: (BuildContext context, int index) {
        return Container(
            height: 80,
            color: Colors.white70,
            child: Center(child: Text(
                'Key of ${test[index]}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 39, // 26
                  color: Colors.black,
                )
            ),)
        );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}



