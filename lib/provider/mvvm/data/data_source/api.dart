import 'dart:convert';

import 'package:http/http.dart' as http;
class Api {
  final http.Client _client;

  Api({http.Client? client}) : _client = (client ?? http.Client());

  static const baseUrl = 'https://gist.githubusercontent.com/SHT-3756/96ec182264c7ae0c531691da5a994a08/raw/bf5c0aa9154abfe4c742349914e1d6fd30d7791c/';

  Future<Iterable?> get(String param) async {
    try {
      String path = baseUrl + param;

      final res = await _client.get(Uri.parse(path));

      Map<String, dynamic> jsonResponse = jsonDecode(res.body);
      Iterable data = jsonResponse['data'];

      return data;
    } catch (e) {
      return null;
    }
  }
// Post
// Update
// Delete
}
