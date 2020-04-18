import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:g10project/MessageBoard.dart';
import 'MessageBoard.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
  ),
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FamBook"),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/leo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.photo_library,  color: Colors.red),
                      iconSize: 100,
                      tooltip: 'Change your background',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MessageBoard()),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.update, color: Colors.red),
                      iconSize: 100,
                      tooltip: 'Update your statusfeed',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.photo_library,  color: Colors.red),
                      iconSize: 100,
                      tooltip: 'Change your background',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.update, color: Colors.red),
                      iconSize: 100,
                      tooltip: 'Update your statusfeed',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.photo_library,  color: Colors.red),
                      iconSize: 100,
                      tooltip: 'Change your background',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.update, color: Colors.red),
                      iconSize: 100,
                      tooltip: 'Update your statusfeed',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
