import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => (runApp(WebViewExample()));

class WebViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Web View Code'),
        ),
        body: LoadFromString(),
      ),
    );
  }
}

class LoadFromString extends StatelessWidget {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'about:blank',
      onWebViewCreated: (WebViewController webViewController) {
        _controller = webViewController;
        _loadHtmlFromAssets();
      },
    );
  }

  String html = '''
  <h1>Bismillah<h1/>
  <h2>SALLALLAHU ALAIHI WASALLAM<h2/>
  <h3>SALLALLAHU ALAIHI WASALLAM<h3/>
  <h4>SALLALLAHU ALAIHI WASALLAM<h4/>
  <h5>SALLALLAHU ALAIHI WASALLAM<h5/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  <h6>SALLALLAHU ALAIHI WASALLAM<h6/>
  ''';

  _loadHtmlFromAssets() async {
    // String fileText = await rootBundle.loadString('assets/help.html');
    // _controller.loadUrl( Uri.dataFromString(
    //     fileText,
    //     mimeType: 'text/html',
    //     encoding: Encoding.getByName('utf-8')
    // ).toString());

    _controller.loadUrl(
        Uri.dataFromString(html, mimeType: 'text/html').toString()
    );
  }

}
