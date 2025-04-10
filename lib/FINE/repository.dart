import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';

class FineRepository {
  Future<List<DocNoModel>> fetchDocNo(String divcode) async {
    print("Fetching division codes...");
    try {
      final response = await dio.get('/Fine/doc_no_search/$divcode');
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
}
