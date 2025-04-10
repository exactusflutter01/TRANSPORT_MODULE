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
}