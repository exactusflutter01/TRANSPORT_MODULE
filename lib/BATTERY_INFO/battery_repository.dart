import 'package:trans_module/BATTERY_INFO/battery_model.dart';

import '../CONSTANTS.dart';

class BatteryRepository {
  fetchDocNo() async {
    try {
      final response = await dio.get('/battery_info/doc_no_search/:div_code');
      print(dio);
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map((item) => Battery_Docno_model.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error in Battery Repo $e");
    }
  }
}