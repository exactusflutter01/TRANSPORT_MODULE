// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:trans_module/CONSTANTS.dart';

// class regRepository {
//   Future<List<dynamic>> fetchDivCode() async {
//     try {
//       const url = '/registration/div_code_get';
//       var response = await http.get(Uri.parse(url));

//       print("Response Status Code: ${response.statusCode}");
//       print("Response Body: ${response.body}");

//       if (response.statusCode == 200) {
//         var data = json.decode(response.body);

//         if (data is List) {
//           return data;
//         } else {
//           throw Exception("Unexpected data format: ${data.runtimeType}");
//         }
//       } else {
//         print("Error: ${response.statusCode} - ${response.body}");
//         throw Exception('Failed to load div code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print("Exception in div code: $e");
//       throw Exception('Network error: $e');
//     }
//   }
// }

// import 'dart:convert';
// import 'package:dio/dio.dart';

// class RegRepository {
//   final Dio dio = Dio(BaseOptions(baseUrl: "https://scm06.exactuscloud.com:4016/api"));

//   Future<List<dynamic>> fetchDivCode() async {
//     try {
//       const endpoint = '/registration/div_code_get';
//       Response response = await dio.get(endpoint);

//       print("Response Status Code: ${response.statusCode}");
//       print("Response Body: ${response.data}");

//       if (response.statusCode == 200) {
//         if (response.data is List) {
//           return response.data;
//         } else {
//           throw Exception("Unexpected data format: ${response.data.runtimeType}");
//         }
//       } else {
//         print("Error: ${response.statusCode} - ${response.data}");
//         throw Exception('Failed to load div code: ${response.statusCode}');
//       }
//     } catch (e) {
//       print("Exception in div code: $e");
//       throw Exception('Network error: $e');
//     }
//   }
// }

// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:trans_module/REGISTRATION/reg_model.dart';

// class RegRepository {
//   final Dio dio = Dio(BaseOptions(baseUrl: "https://scm06.exactuscloud.com:4016/api"));

//   Future<List<DivisionModel>> fetchDivCode() async {
//     try {
//       const endpoint = '/registration/div_code_get';
//       Response response = await dio.get(endpoint);

//       if (response.statusCode == 200) {
//         if (response.data is List) {
//           return (response.data as List)
//               .map((json) => DivisionModel.fromJson(json))
//               .toList();
//         } else {
//           throw Exception("Unexpected data format");
//         }
//       } else {
//         throw Exception('Failed to load div code: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Network error: $e');
//     }
//   }
// }
// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:trans_module/REGISTRATION/reg_model.dart';

// class RegRepository {
//   final Dio dio = Dio(BaseOptions(baseUrl: "https://scm06.exactuscloud.com:4016/api"));

//   Future<List<DivisionModel>> fetchDivCode() async {
//     try {
//       const endpoint = '/registration/div_code_get';
//       Response response = await dio.get(endpoint);

//       if (response.statusCode == 200) {
//         if (response.data is List) {
//           return (response.data as List)
//               .map((json) => DivisionModel.fromJson(json))
//               .toList();
//         } else {
//           throw Exception("Unexpected data format");
//         }
//       } else {
//         throw Exception('Failed to load div code: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Network error: $e');
//     }
//   }
// }

import 'package:dio/dio.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';

class RegRepository {
  Future<List<DivisionModel>> fetchDivCode() async {
    print("Fetching division codes...");

    try {
      final response = await dio.get('/registration/div_code_get');

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
}
