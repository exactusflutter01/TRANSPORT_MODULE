import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:http/http.dart' as http;
import 'package:trans_module/INSURANCE/MODELS/insu_model.dart';

class Insurance_Repo {
  fetchinsCmpny() async {
    try {
      final response = await dio.get('/insurance/insurance_company_get');
      print("response.url ${response.realUri}");
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map((item) => Ins_cmpny_model.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error in Insurance Repo $e");
    }
  }

// /insurance/debit_code_get
  fetchPolicyType() async {
    try {
      final response = await dio.get('/insurance/policy_type_get');
      print(response.realUri);
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map((item) => PolicyTypeModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error in Insurance Repo $e");
    }
  }

  fetchDebitCode() async {
    print("repository  page: debit code");
    try {
      final response = await dio.get('/insurance/debit_code_get');

      print("response.url ${response.realUri}");
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map((item) =>
              DebitaccountModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error in Insurance Repo $e");
    }
  }

  InsuranaceInsert(Map data) async {
    try {
      final response =
          await dio.post('/insurance/insurance_insert', data: data);
      print("response.url ${response.realUri}");
      if (response.statusCode == 200) {
        print('Data inserted successfully');
      } else {
        print('Failed to insert data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during data insertion: $e');
    }
  }
}
