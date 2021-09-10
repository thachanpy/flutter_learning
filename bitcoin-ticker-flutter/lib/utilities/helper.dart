import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {

  NetworkHelper({@required this.url, this.headers});

  final String url;
  final Map<String, String> headers;

  Future<dynamic> get() async {
    http.Response resp = await http.get(
      Uri.parse(url),
      headers: headers
    );
    if (resp.statusCode == 200) {
      return jsonDecode(resp.body);
    } else {
      throw 'Problem with the get request';
    }
  }
}
