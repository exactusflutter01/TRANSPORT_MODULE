import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_model.dart';

class FuelFillingRepository {
  fetchPaymentMoods() async {
    try {
      final response = await dio.get('/payment_mood_search');
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map(
              (item) => paymentMoodModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Errorsb $e");
    }
  }
}
