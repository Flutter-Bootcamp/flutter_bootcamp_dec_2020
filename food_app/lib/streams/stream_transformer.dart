import 'dart:async';

void main () {
  final StreamController<int> streamController = StreamController<int>();

  /// Listen to the stream
  streamController.stream
      .where((element) => element %5 == 0)
      .listen((event) => print(event));

  /// Add data into stream
  for (int i=0; i<=20; i++)  {
    streamController.sink.add(i);
  }
  // Exception:
  // streamController.sink.add('Hello'); -> since the streamController is of int type


  ///close the stream
  streamController.close();

  /// after the stream is closed, sink.add will throw an exception
}