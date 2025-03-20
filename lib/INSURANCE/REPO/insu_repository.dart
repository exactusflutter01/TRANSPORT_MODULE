import 'dart:convert';
import 'package:trans_module/CONSTANTS.dart';
import 'package:http/http.dart' as http;

class Insurance_ApiService {
  Future FetchDocumentNo(div_code) async {
    try {
      var url = '$baseUrl/insurance/doc_no_get/$div_code';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var Jsondata = json.decode(response.body);
        return Jsondata;
      }
    } catch (e) {
      print("Failed to fetch Document No $e");
    }
  }

  Future FetchIns_company() async {
    try {
      var url = '$baseUrl/insurance/insurance_company_get';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var Jsondata = json.decode(response.body);
        return Jsondata;
      }
    } catch (e) {
      print("Failed to fetch Document No $e");
    }
  }

  Future FetchPolicy_type() async {
    try {
      var url = '$baseUrl/insurance/policy_type_get';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var Jsondata = json.decode(response.body);
        return Jsondata;
      }
    } catch (e) {
      print("Failed to fetch Document No $e");
    }
  }

  Future Fetchdebit_code() async {
    try {
      var url = '$baseUrl/insurance/debit_code_get';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var Jsondata = json.decode(response.body);
        return Jsondata;
      }
    } catch (e) {
      print("Failed to fetch Document No $e");
    }
  }
}
