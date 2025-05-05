import 'package:dio/dio.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';

class RegRepository {
  Future<List<DivisionModel>> fetchDivCode() async {
    print("Fetching division codes...");

    try {
      final response =
          await dio.get('/registration/div_code_get', options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));

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
      final response = await dio.get('/registration/doc_no_search/$divcode',
          options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));

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

  Future<int> registrationInsertFN(
      Map<String, dynamic> registrationData) async {
    print("Inserting data");

    try {
      final response = await dio.post('/registration/registration_insert',
          data: registrationData, options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));

      print("Response Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");
      print("Sending data to: ${response.requestOptions.uri}");
      if (response.statusCode == 200) {
        return 1;
      } else {
        return 0;
      }
    } catch (e) {
      print("Error :  $e");
      return 0;
    }
  }
Future<dynamic> fetchMaxDocNo() async {
    print("in repository page ");
    try {
      final response = await dio.get('/registration/max_doc_no_get/$cmpCode');
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      final data = response.data;

      print("data $data");
      return data[0]["MAX_DOC_NO"] ?? 0;
    } catch (e) {
      print("Error :  $e");
     
    }
  }
  Future<List<VehicleCodeModel>> fetchVehicleCode(String divcode) async {
    print("Fetching vehicle_code_get...");

    try {
      final response = await dio.get(
          '/insurance/vehicle_code_get/$divcode/$cmpCode', options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));

      print("Response Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");

      if (response.statusCode == 200) {
        if (response.data is List) {
          final modelData = (response.data as List)
              .map((item) =>
                  VehicleCodeModel.fromJson(item as Map<String, dynamic>))
              .toList();
          print("Parsed Model Data: $modelData");
          return modelData;
        } else {
          print("Unexpected data format: ${response.data.runtimeType}");
          return [];
        }
      } else {
        print('Failed to load vehicle codes: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print("Network error: $e");
      return [];
    }
  }

  fetchCreditCode() async {
    print("repository  page: credit code");
    try {
      final response =
          await dio.get('/insurance/debit_code_get', options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));

      print("response.url ${response.realUri}");
      print("response.data ${response.data}");
      if (response.statusCode == 200) {
        final modelData = (response.data)
            .map((item) =>
                CreditAccountModel.fromJson(item as Map<String, dynamic>))
            .toList();
        print("modelData $modelData");
        return modelData;
      } else {
        return [];
      }
    } catch (e) {
      print("Error in Insurance Repo $e");
    }
  }
}
