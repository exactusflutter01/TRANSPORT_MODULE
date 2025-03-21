import 'dart:convert';
import 'package:trans_module/CONSTANTS.dart';
import 'package:http/http.dart' as http;
import 'package:trans_module/INSURANCE/MODELS/insu_model.dart';

class Insurance_Repo {
  fetchinsCmpny() async {
    try {
      final response = await dio.get('insurance/insurance_company_get');
      print(dio);
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
}
