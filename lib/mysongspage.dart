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

  final duplicateItems = List<String>.generate(20, (i) => "Song $i");
  var songs = List<String>();

  @override
  void initState() {
    songs.addAll(duplicateItems);
    super.initState();
  }

  TextEditingController editingController = TextEditingController();

  void _goToCreateSongs() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateSongs(title: 'Create Songs')),
      );
    });
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query) || item.toLowerCase().contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        songs.clear();
        songs.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        songs.clear();
        songs.addAll(duplicateItems);
      });
    }
  }

  createKeySelect(BuildContext context) {
    return showDialog(context: context,builder: (context) {
      return AlertDialog(
        //backgroundColor: Colors.orange,
        title: const Text('Select key'),
        content: Container(
          width: 250,
          height: 75,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: _goToCreateSongs,
                  child: const Text('C')
                ),
                SimpleDialogOption(
                  onPressed: _goToCreateSongs,
                  child: const Text('D'),
                ),
                SimpleDialogOption(
                  onPressed: _goToCreateSongs,
                  child: const Text('E'),
                ),
                SimpleDialogOption(
                  onPressed: _goToCreateSongs,
                  child: const Text('F'),
                ),
                SimpleDialogOption(
                  onPressed: _goToCreateSongs,
                  child: const Text('G'),
                ),
                SimpleDialogOption(
                  onPressed: _goToCreateSongs,
                  child: const Text('A'),
                ),
                SimpleDialogOption(
                  onPressed: _goToCreateSongs,
                  child: const Text('B'),
                ),
              ]
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff212128),
        resizeToAvoidBottomPadding: false,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Stack(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 102),
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    itemCount: songs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff212128),
                          border: Border.all(color: Color(0xffA2A2A7)),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(17),
                            bottomRight: Radius.circular(17),
                            topRight: Radius.circular(17),
                            topLeft: Radius.circular(17),
                          ),
                        ),
                        margin: EdgeInsets.all(6),
                        //color: Color(0xffF0BD74),
                        child: Center(
                            child: Text('${songs[index]}',
                              style: TextStyle(fontSize: 18, color: Color(0xffA2A2A7)),
                            )
                        ),
                      );
                    }
                )
            ),

            Padding(
              padding: const EdgeInsets.only(top: 35, left: 8, right: 8),
              child: TextField(
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*1.05, right: MediaQuery.of(context).size.width*0.7),
              width: 80,
              height: 80,
              child: FloatingActionButton(
                child: Icon(
                  Icons.add,
                  color: Colors.black87,
                  size: 80,
                ),
                backgroundColor: Colors.orange,
                onPressed: () {
                  createKeySelect(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

