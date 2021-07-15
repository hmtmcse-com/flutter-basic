import 'dart:convert';
import 'package:http/http.dart' as http;

class PFHttpResponse {
  int statusCode;
  String body;
  PFHttpResponse({required this.statusCode, required this.body});

}



class PFHTTPRequester {
  static const APPLICATION_JSON = "application/json";
  static const GET = "GET";
  static const POST = "POST";


  Map<String, String> _headers = {};

  PFHTTPRequester addHeader(String key, String value) {
    _headers[key] = value;
    return this;
  }

  Map<String, String> getHeaders() {
    return _headers;
  }

  PFHTTPRequester clearHeader() {
    _headers = {};
    return this;
  }

  Future<PFHttpResponse> requestTo(String url, String method, {Object? data}) async {
    var uri = Uri.parse(url);
    http.Request request = http.Request(method, uri);
    var encoding = Encoding.getByName("utf-8");
    request.encoding = encoding!;

    if (data is String) {
      request.body = data;
    } else if (data is Map) {
      request.bodyFields = Map<String,String>.from(data);
    }

    request.headers.addAll(_headers);

    final response = await request.send();
    return new PFHttpResponse(statusCode: response.statusCode, body: await response.stream.bytesToString());
  }

  Future<PFHttpResponse> GETRequest(String url, {Map<String, String>? params}) async {
    return await requestTo(url, GET, data: params);
  }

  Future<PFHttpResponse> POSTRequest(String url, {Map<String, String>? data}) async {
    return await requestTo(url, POST, data: data);
  }

  Future<PFHttpResponse> jsonPOSTRequest(String url, {Map<String, dynamic>? data}) async {
    addHeader("Content-Type", APPLICATION_JSON);
    String? jsonString;
    if(data is Map){
      jsonString = json.encode(data);
    }
    return await requestTo(url, POST, data: jsonString);
  }

}


void printResponse(PFHttpResponse response){
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}

Future<void> main() async {
  var baseURL = "https://flask-hmtmcse.herokuapp.com/";
  var pfHTTPRequester = PFHTTPRequester();

  var data = {
    "description": "postJsonRequest",
    "name": "postJsonRequest",
    "target": "postJsonRequest",
    "targetType": "postJsonRequest",
    "title": "postJsonRequest",
    "type": "TextOnly"
  };

  var jsonCreate = {
    'data': {
      "description": "postJsonRequest",
      "name": "postJsonRequest",
      "target": "postJsonRequest",
      "targetType": "postJsonRequest",
      "title": "postJsonRequest",
      "type": "TextOnly"
    }
  };

  var response = await pfHTTPRequester.POSTRequest(baseURL + "api/v1/card/form-data", data: data);
  printResponse(response);

  response = await pfHTTPRequester.jsonPOSTRequest(baseURL + "api/v1/card/create", data: jsonCreate);
  printResponse(response);

  pfHTTPRequester.clearHeader();
  response = await pfHTTPRequester.GETRequest(baseURL + "api/v1/card/list");
  printResponse(response);


}