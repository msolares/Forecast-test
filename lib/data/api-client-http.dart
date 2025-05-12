import 'dart:convert';

import 'package:http/http.dart' as http;
import 'api-client-interfaz.dart';

class HttpApiClient implements ApiClient {
  final http.Client client;

  HttpApiClient(this.client);

  @override
  Future<String> get(String url, Map<String, String> headers) async {
    final response = await client.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      String decodedBody = utf8.decode(response.bodyBytes);
      return decodedBody;
    } else {
      return "nOK";
    }
  }

  @override
  Future<String> post(String url, Map<String, String> headers,
      String body) async {
    final response = await client.post(
        Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      String decodedBody = utf8.decode(response.bodyBytes);
      return decodedBody;
    } else {
      return "${response.statusCode}";
    }
  }

  @override
  Future<String> post2(String url, Map<String, String> headers,
      Map<String, String> body) async {
    final response = await client.post(
        Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      String decodedBody = utf8.decode(response.bodyBytes);
      return decodedBody;
    } else {
      return "${response.statusCode}";
    }
  }
}
