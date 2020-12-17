import 'dart:async';

void main () {

  final StreamController streamController = StreamController();

  /// Listen to the stream
  streamController.stream.listen((event) => print(event));

  /// Add data into stream
  streamController.sink.add('Flutter BootCamp 2020');

  streamController.sink.add('birth: ');
  streamController.sink.add(DateTime(1996, 9, 29));

  ///close the stream
  streamController.close();

  /// after the stream is closed, sink.add will throw an exception
}