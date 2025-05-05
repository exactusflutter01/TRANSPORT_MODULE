import 'package:dio/dio.dart';
import 'package:trans_module/BATTERY_INFO/battery_model.dart';

import '../CONSTANTS.dart';

class BatteryRepository {
  Future<dynamic> fetchDocNo(String div_code) async {
    print("REPOSITORY DOC NO");
    try {
      final response = await dio.get('/battery_info/doc_no_search/$div_code/$cmpCode');
      print("response.statusCode ${response.statusCode} ");
      if (response.statusCode == 200 && response.data.isNotEmpty) {
        final modelData = (response.data as List)
            .map((item) =>
                Battery_Docno_model.fromJson(item as Map<String, dynamic>))
            .toList();
        return modelData;
      } else {
        return response.data;
      }
    } on DioException catch (e) {
      print("Error in Battery Repo ${e.response?.data['error']}");
      return "Error: ${e.response?.data['error']}";
    } catch (e) {
      print("error: $e");
      return "Error: $e";
    }
  }
  Future<dynamic> fetchMaxDocNo(  ) async {
       print("in repository page ");
    try {
      final response = await dio.get('/battery_info/max_docno_get/$cmpCode');
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

    Future<int> postbatteryDetails(
      Map<String, dynamic> batteryDetails) async {
    print("Inserting data $batteryDetails");

    try {
      final response = await dio.post('/battery_info/batteryinfo_insert',
          data: batteryDetails, options: Options(
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
}
