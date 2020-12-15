import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleListViewBuilder extends StatelessWidget {
  final List<Container> containerList = [
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.yellow,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.orange,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Example container')),
        body: ListView.builder(
          //padding: EdgeInsets.all(10),
          //separatorBuilder: (context, index) => Container(height: 10,),
          itemCount: containerList.length,
          itemBuilder: (context, index) {
            return containerList[index];
            /*return ListTile(
              title: containerList[index],
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.article),
              subtitle: Text(index.toString()),
              onTap: (){},
            );*/

          },
        )
    );
  }
}
