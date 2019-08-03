import 'package:http/http.dart' as http;
import 'dart:async';

void main(List<String> args) {
  GetNews();
  print('Drink Coffee');
  print('Eat Cereal');
  print('Take Dog on Walk');
}

Future<void> GetNews() async {
  final resp = await http.get('https://google.com');
  print(resp);
}