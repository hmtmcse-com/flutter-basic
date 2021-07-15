import 'dart:convert';
import 'package:http/http.dart' as http;

class PFHttpResponse {
  int statusCode;
  String body;

  PFHttpResponse({required this.statusCode, required this.body});
}

class HttpRequestExample {
  
  getRequest(url) async {
    final response = await callToApi("GET", url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${await response.body}');
  }

  getRequest2(url ) async {
    var url = Uri.parse("http://127.0.0.1:5000/api/v1/card/list");
    final response = await http.get(url);
    // final response = await http.MultipartRequest(url);
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

  postJsonRequest(String url, Map body) async {
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

  deleteRequest() {
    var url = Uri.parse("http://127.0.0.1:5000/api/v1/card/list");
    http.Request request = http.Request("DELETE", url);
  }

  putRequest() {}

  putJsonRequest() {}

  multiPartRequest() {}

  downloadRequest() {}

  callToApi(String method, String url, {Object? data, Map<String, String>? headers}) async {
    var uri = Uri.parse(url);
    http.Request request = http.Request(method, uri);
    var encoding = Encoding.getByName("utf-8");
    request.encoding = encoding!;

    if (data is String) {
      print("String");
    } else if (data is Map) {
      print("Map");
    }

    final response = await request.send();
    return new PFHttpResponse(statusCode: response.statusCode, body: await response.stream.bytesToString());
  }
}

void main(List<String> arguments) {
  var httpExample = HttpRequestExample();
  var baseURL = "https://flask-hmtmcse.herokuapp.com/";
  httpExample.getRequest(baseURL + "api/v1/card/list?per-page=1");
}
