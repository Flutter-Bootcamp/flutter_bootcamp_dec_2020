import 'package:live_code/1st_day/widgets/column_example.dart';
import 'package:live_code/1st_day/widgets/container.dart';
import 'package:live_code/1st_day/widgets/image_example.dart';
import 'package:live_code/1st_day/widgets/list_view_builder.dart';
import 'package:live_code/1st_day/widgets/row_example.dart';
import 'package:live_code/1st_day/widgets/text.dart';
import 'package:live_code/1st_day/widgets/wrap_example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Presentation')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          RaisedButton(
            child: Text('Container'),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ExampleContainer()));
            },
          ),
          RaisedButton(
            child: Text('Text'),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ExampleText()));
            },
          ),
          RaisedButton(
            child: Text('Column'),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ExampleColumn()));
            },
          ),
          RaisedButton(
            child: Text('Row'),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ExampleRow()));
            },
          ),
          RaisedButton(
            child: Text('Wrap'),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ExampleWrap()));
            },
          ),
          RaisedButton(
            child: Text('ListView.builder'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ExampleListViewBuilder()));
            },
          ),
          RaisedButton(
            child: Text('Image.network'),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Exampleimage()));
            },
          ),
        ],
      ),
    );
  }
}
