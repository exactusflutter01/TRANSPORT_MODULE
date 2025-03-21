import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_model.dart';

class FuelFillingRepository {
 fetchPaymentMoods() async {
    print("in repository page ");
    try {
      final response = await dio.get('/payment_mood_search');
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
       final  modelData = (response.data)
          .map(
              (item) => paymentMoodModel.fromJson(item as Map<String, dynamic>))
          .toList() ;
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      
      print("Error :  $e");
      return [];
    }
  }
}
