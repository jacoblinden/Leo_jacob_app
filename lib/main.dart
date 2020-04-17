import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                      icon: Icon(Icons.photo_library, size: 100, color: Colors.red),
                      tooltip: 'Change your background',
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.update, size: 100, color: Colors.red),
                      tooltip: 'Change your background',
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
