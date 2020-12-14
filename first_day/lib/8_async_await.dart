import 'dart:math';

void main() {
  getTemperature().then((temp) {
    print('Temperature: $temp°');
  });
  print('Waiting.');
  print('Waiting..');
  print('Waiting...');
}

Future<int> getTemperature() async {
  await Future.delayed(Duration(seconds: 1));
  return Random().nextInt(40);
}
