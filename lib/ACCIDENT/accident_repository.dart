import 'package:dio/dio.dart';
import 'package:trans_module/ACCIDENT/accident_model.dart';
import 'package:trans_module/CONSTANTS.dart';

class AccidentRepository {
  Future<int> insertAccidentData(Map<String, dynamic> accidentData) async {
    print("in repository page fuelData $accidentData");
    try {
      final response = await dio.post(
        '/tp_accident_fine_insert', // API endpoint
        data: accidentData, // Request body
      );
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");

      if (response.statusCode == 200) {
        return 1; // Successfully inserted
      } else {
        return 0; // Failed to insert
      }
    } catch (e) {
      return 0;
    }
  }

  Future<List<AccidentDocNoModel>> fetchDocNo(div_code, doc_type) async {
    print("/doc_search_accident/$div_code/$doc_type/$cmpCode");
    try {
      final response = await dio.get(
          '/doc_search_accident/$div_code/$doc_type/$cmpCode', options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      )
      
      );
      print(response.realUri);
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      if (response.statusCode == 200) {
        List<AccidentDocNoModel> modelData = (response.data as List)
            .map((item) => AccidentDocNoModel.fromJson(item as Map<String, dynamic>))
            .toList();
        print("modelData $modelData");

        return modelData;
      } else if (response.statusCode == 404) {
        print("⚠️ No data found for given parameters.");
        return [];
      } else {
        throw Exception("Failed to fetch documents: ${response.statusCode}");
      }
    } catch (e) {
      
      print("Error in Accident Repo $e");
      throw Exception("Failed to fetch documents: $e");
    }
  }
  Future<List<AccidentFineCodeModel>> fetchFineCode() async {

    try {
      final response = await dio.get(
          '/fineCode_get_accident/$cmpCode', options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));
      print(response.realUri);
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      if (response.statusCode == 200) {
        List<AccidentFineCodeModel> modelData = (response.data as List)
            .map((item) => AccidentFineCodeModel.fromJson(item as Map<String, dynamic>))
            .toList();
        print("modelData $modelData");

        return modelData;
      } else if (response.statusCode == 404) {
        print("⚠️ No data found for given parameters.");
        return [];
      } else {
        throw Exception("Failed to fetch documents: ${response.statusCode}");
      }
    } catch (e) {
      print("Error in Accident Repo $e");
      throw Exception("Failed to fetch documents: $e");
    }
  }
}
