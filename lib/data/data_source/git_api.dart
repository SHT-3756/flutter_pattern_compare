import 'dart:convert';

import 'package:http/http.dart' as http;

class GistApi {
  final http.Client _client;

  GistApi({http.Client? client}) : _client = (client ?? http.Client());

  static const baseUrl = 'https://gist.githubusercontent.com/SHT-3756/96ec182264c7ae0c531691da5a994a08/raw/bf5c0aa9154abfe4c742349914e1d6fd30d7791c/result.json';

  Future getTabData() async {
    try {
      final res = await _client.get(Uri.parse(baseUrl));

      Map<String, dynamic> jsonResponse = jsonDecode(res.body);
      Iterable data = jsonResponse['data'];
      return data;
    } catch (e) {
      return e;
    }
  }


}
