import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exampleimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Example container')),
        body: Center(
            child: Image.network('https://flutter.dev/images/catalog-widget-placeholder.png',
              loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null ?
                    loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                        : null,
                  ),
                );
              })
            /*child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://flutter.dev/images/catalog-widget-placeholder.png')
                )
              ),
            )*/
        )
    );
  }
}
