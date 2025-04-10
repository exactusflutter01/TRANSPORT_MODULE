import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_model.dart';

class FuelFillingRepository {
  Future<List<paymentMoodModel>> fetchPaymentMoods() async {
    print("in repository page ");
    try {
      final response = await dio.get('/payment_mood_search');
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      final List<paymentMoodModel> modelData = (response.data as List)
          .map(
              (item) => paymentMoodModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error :  $e");
      return [];
    }
  }

  Future<List<stationModel>> fetchStations() async {
    print("in repository page ");
    try {
      final response = await dio.get('/station_get');
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      final modelData = (response.data as List)
          .map((item) => stationModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error :  $e");
      return [];
    }
  }

  Future<List<fuelTypeModel>> fetchFuelType() async {
    print("in repository page ");
    try {
      final response = await dio.get('/fuel_type_get');
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      final modelData = (response.data as List)
          .map((item) => fuelTypeModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error :  $e");
      return [];
    }
  }

  Future<List<fuelCardModel>> fetchFuelCard() async {
    print("in repository page ");
    try {
      final response = await dio.get('/fuel_card_no_get');
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      final modelData = (response.data as List)
          .map((item) => fuelCardModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error :  $e");
      return [];
    }
  }

  Future<List<fuelDocNoModel>> fetchDocNo(div_code) async {
    print("in repository page ");
    try {
      final response = await dio.get('/doc_search_fuel/$div_code');
      print("Request URL: ${response.realUri}");
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      final modelData = (response.data as List)
          .map((item) => fuelDocNoModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error :  $e");
      return [];
    }
  }

Future<dynamic> increamentDocNo() async {
    print("in repository page ");
    try {
      final response = await dio.get('/fuel_doc_no_increment/$cmpCode');
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

  Future<int> insertFuelFilling(Map<String, dynamic> fuelData) async {
    print("in repository page fuelData $fuelData");
    try {
      final response = await dio.post(
        '/fuel_filling_insert', // API endpoint
        data: fuelData, // Request body
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
