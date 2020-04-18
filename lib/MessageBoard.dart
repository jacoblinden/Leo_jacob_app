import 'package:flutter/material.dart';
import 'Member.dart';
import 'Family.dart';
class MessageBoard extends StatelessWidget{

  final Family f = new Family("Carlen", Member("Leo"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.red,
        title: Text("News"),
      ),
      body: Center(

        child: Column(

          children: <Widget>[
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: f.news.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                      height: 65,
                      color: Colors.transparent,
                      child: ListTile(
                        leading: null,
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
        backgroundColor: Colors.red,
        onPressed:(){
          print(f.news);
        },
        tooltip: 'Add news',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}