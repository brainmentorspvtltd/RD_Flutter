import 'package:http/http.dart' as http;

class Server {
  static getImages(Function fn) {
    const URL =
        "https://api.giphy.com/v1/gifs/search?api_key=vFRSFWo6g7vJ7ZAjt3DMDolU52ORTxwH&q=Iron%20man&limit=5";
    Future<http.Response> future = http.get(URL);
    future
        .then((http.Response response) => fn(response.body))
        .catchError((err) => print(err));
  }
}
