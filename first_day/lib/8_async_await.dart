import 'dart:math';

void main() async {
  getTemperature().then((temp) {
    print('Temperature: $temp°');
  });

  //await getTemperature();
  print('Waiting.');
  print('Waiting..');
  print('Waiting...');
}

Future<int> getTemperature() async {
  await Future.delayed(Duration(seconds: 1));
  return Random().nextInt(40);
}
