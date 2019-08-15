import 'package:first/first.dart';
import 'package:http/http.dart' as http;

main() async {
  var awesome = Awesome();
  print('awesome: ${awesome.isAwesome}');

  var resp = await http.get('http://google.com');
  print(resp);
}
