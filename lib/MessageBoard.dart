import 'package:flutter/material.dart';
import 'Member.dart';
import 'Family.dart';
class MessageBoard extends StatelessWidget{

  Family f = new Family("Carlen", Member("Leo"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
            Text(
              'Family News',
            ),
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: f.news.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height: 65,
                      color: Colors.amber,
                      child: ListTile(
                        title: Text('${f.news[index].title}'),
                        subtitle: Text('Hours since update: ${f.news[index].message}'),
                      )
                  );
                }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        tooltip: 'Add news',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}