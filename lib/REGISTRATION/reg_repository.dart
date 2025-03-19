import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trans_module/CONSTANTS.dart';



class regRepository {
  Future<List<dynamic>> fetchDivCode() async {
    try {
      const url = '$baseUrl/registration/div_code_get';
      var response = await http.get(Uri.parse(url));

      print("Response Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        if (data is List) {
          return data;
        } else {
          throw Exception("Unexpected data format: ${data.runtimeType}");
        }
      } else {
        print("Error: ${response.statusCode} - ${response.body}");
        throw Exception('Failed to load div code: ${response.statusCode}');
      }
    } catch (e) {
      print("Exception in div code: $e");
      throw Exception('Network error: $e');
    }
  }
}
