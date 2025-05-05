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

  fetchVehicleCode(division) async {
    print("repository  page: Vechicle code");
    try {
      final response = await dio.get(
          '/insurance/vehicle_code_get/$division/$cmpCode', options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));
      print("response.url ${response.realUri}");
      print("response.data ${response.data}");
      if (response.statusCode == 200) {
        final modelData = (response.data as List)
            .map((item) =>
                VehicleCodeModel.fromJson(item as Map<String, dynamic>))
            .toList();
        print("modelData $modelData");

        return modelData;
      } else if (response.statusCode == 404) {
        return [];
      } else {
        throw Exception("Failed to fetch documents: ${response.statusCode}");
      }
    } catch (e) {
      print("Error in Insurance Repo $e");
      throw Exception("Failed to fetch documents: ${e}");
    }
  }

  InsuranaceInsert(Map data) async {
    try {
      final response =
          await dio.post('/insurance/insurance_insert', data: data);
      print("response.url ${response.realUri}");
      if (response.statusCode == 200) {
        print('Data inserted successfully');
        return 1;
      } else {
        print('Failed to insert data: ${response.statusCode}');
        return 0;
      }
    } catch (e) {
      print('Error during data insertion: $e');
    }
  }

  fetchMatchDocNo() async {
    print("FETCH MAX DOC DATA");
    try {
      final response = await dio.get('/insurance/max_docno_get');
      print("response ${response}");
      final DocNo = response.data;
      return DocNo[0]['DOC_NO'] ?? 0000;
    } catch (e) {
      print("Error in FETCH MAX $e");
    }
  }
}
