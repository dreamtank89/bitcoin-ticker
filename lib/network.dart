import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      var lastPrice = decodedData['rate'];

      return lastPrice;
    } else {
      print(response.statusCode);
    }
  }
}
