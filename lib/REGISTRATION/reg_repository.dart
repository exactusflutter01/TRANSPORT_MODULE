
import 'package:dio/dio.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';

class RegRepository {
  Future<List<DivisionModel>> fetchDivCode() async {
    print("Fetching division codes...");

    try {
      final response = await dio.get('/registration/div_code_get');

      print("Response Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");

      if (response.statusCode == 200) {
        if (response.data is List) {
          final modelData = (response.data as List)
              .map((item) =>
                  DivisionModel.fromJson(item as Map<String, dynamic>))
              .toList();
          print("Parsed Model Data: $modelData");
          return modelData;
        } else {
          print("Unexpected data format: ${response.data.runtimeType}");
          return [];
        }
      } else {
        print('Failed to load div codes: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print("Network error: $e");
      return [];
    }
  }

  Future<List<DocNoModel>> fetchDocNo(String divcode) async {
    print("Fetching division codes...");

    try {
      final response = await dio.get('/registration/doc_no_search/$divcode');

      print("Response Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");

      if (response.statusCode == 200) {
        if (response.data is List) {
          final modelData = (response.data as List)
              .map((item) => DocNoModel.fromJson(item as Map<String, dynamic>))
              .toList();
          print("Parsed Model Data: $modelData");
          return modelData;
        } else {
          print("Unexpected data format: ${response.data.runtimeType}");
          return [];
        }
      } else {
        print('Failed to load div codes: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print("Network error: $e");
      return [];
    }
  }

  Future<String>registrationInsertFN(Map<String, dynamic> registrationData) async {
    print("Inserting data");

    try {
      final response = await dio.post('/registration/registration_insert', data: registrationData);

      print("Response Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");
print("Sending data to: ${response.requestOptions.uri}");
          if (response.statusCode == 200) {
        return "Success";
      } else {
        return "Failed"; 
      }
    } catch (e) {
      print("Error :  $e");
      return "Failed";
    }
  }
   Future<List<VehicleCodeModel>> fetchVehicleCode(String divcode) async {
    print("Fetching vehicle_code_get...");

    try {
      final response = await dio.get('/insurance/vehicle_code_get/$divcode');

      print("Response Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");

      if (response.statusCode == 200) {
        if (response.data is List) {
          final modelData = (response.data as List)
              .map((item) => VehicleCodeModel.fromJson(item as Map<String, dynamic>))
              .toList();
          print("Parsed Model Data: $modelData");
          return modelData;
        } else {
          print("Unexpected data format: ${response.data.runtimeType}");
          return [];
        }
      } else {
        print('Failed to load div codes: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print("Network error: $e");
      return [];
    }
  }
  
}
