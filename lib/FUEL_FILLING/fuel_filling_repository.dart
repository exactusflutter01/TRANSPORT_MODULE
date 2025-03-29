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
 fetchStations() async {
    print("in repository page ");
    try {
      final response = await dio.get('/station_get');
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
       final  modelData = (response.data)
          .map(
              (item) => stationModel.fromJson(item as Map<String, dynamic>))
          .toList() ;
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      
      print("Error :  $e");
      return [];
    }
  }
 fetchFuelType() async {
    print("in repository page ");
    try {
      final response = await dio.get('/fuel_type_get');
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
       final  modelData = (response.data)
          .map(
              (item) => fuelTypeModel.fromJson(item as Map<String, dynamic>))
          .toList() ;
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      
      print("Error :  $e");
      return [];
    }
  }
}
