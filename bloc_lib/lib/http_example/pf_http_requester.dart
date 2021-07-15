import 'dart:convert';
import 'package:http/http.dart' as http;

class PFHttpResponse {
  int statusCode;
  String body;
  PFHttpResponse({required this.statusCode, required this.body});

}



class PFHTTPRequester {
  static const GET = "GET";
  Map<String, String> _headers = {};

  PFHTTPRequester addHeader(String key, String value) {
    return this;
  }

  Map<String, String> getHeaders() {
    return _headers;
  }


  Future<PFHttpResponse> requestTo(String url, String method, {Object? data}) async {
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

  Future<PFHttpResponse> GETRequest(String url, {Map<String, String>? params}) async {
    return await requestTo(url, GET, data: params);
  }


}


void printResponse(PFHttpResponse response){
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}

Future<void> main() async {
  var baseURL = "https://flask-hmtmcse.herokuapp.com/";
  var pfHTTPRequester = PFHTTPRequester();

  var response = await pfHTTPRequester.GETRequest(baseURL + "api/v1/card/list");
  printResponse(response);


}