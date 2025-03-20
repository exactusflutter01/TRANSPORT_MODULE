// /insurance/doc_no_get/:div_code
import 'dart:convert';

import 'package:trans_module/CONSTANTS.dart';
import 'package:http/http.dart' as http;

class Insurance_ApiService {
  Future FetchDocumentNo(div_code) async {
    try {
      var url = '$baseUrl/insurance/doc_no_get/$div_code';
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {}
      var Jsondata = json.decode(response.body);

      return Jsondata;
    } catch (e) {
      print("Failed to fetch $e");
    }
  }
}
