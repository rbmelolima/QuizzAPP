import 'package:http/http.dart';
import 'package:quizzApp/data/http/http.dart';
import 'package:quizzApp/infra/http/http.dart';

HttpClient makeHttpAdapter() {
  final client = Client();
  return HttpAdapter(client);
}
