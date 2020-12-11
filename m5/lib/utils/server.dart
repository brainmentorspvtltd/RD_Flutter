import 'package:http/http.dart' as http;

class Server {
  Server._() {}
  static Future<http.Response> callServer(String url) {
    Future<http.Response> future = http.get(url);
    return future;
  }
}
