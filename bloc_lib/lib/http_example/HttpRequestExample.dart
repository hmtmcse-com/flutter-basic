import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpRequestExample {
  getRequest() async {
    var url = Uri.parse("http://127.0.0.1:5000/api/v1/card/list");
    final response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  getWithParamsRequest() async {
    Map<String, dynamic> qParams = {
      'per-page': '1',
      'sort-order': 'asc',
      'sort-field': 'id',
    };
    var url = Uri.parse("http://127.0.0.1:5000/api/v1/card/list");
    url = url.replace(queryParameters: qParams);
    final response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  postRequest() {}

  postJsonRequest() async {
    var url = Uri.parse('http://127.0.0.1:5000/api/v1/card/create');
    var body = {
      'data': {
        "description": "postJsonRequest",
        "name": "postJsonRequest",
        "target": "postJsonRequest",
        "targetType": "postJsonRequest",
        "title": "postJsonRequest",
        "type": "TextOnly"
      }
    };
    var headers = {"Content-Type": "application/json"};
    var encoding = Encoding.getByName("utf-8");
    final response = await http.post(
      url,
      body: json.encode(body),
      headers: headers,
      encoding: encoding,
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  requestWithHeader() {}

  deleteRequest() {}

  putRequest() {}

  putJsonRequest() {}

  multiPartRequest() {}

  downloadRequest() {}
}

void main(List<String> arguments) {
  var httpExample = HttpRequestExample();
  httpExample.postJsonRequest();
}
