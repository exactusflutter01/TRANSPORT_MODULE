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

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';

class RegRepository {
  final Dio dio = Dio(BaseOptions(baseUrl: "https://scm06.exactuscloud.com:4016/api"));

  Future<List<DivisionModel>> fetchDivCode() async {
    try {
      const endpoint = '/registration/div_code_get';
      Response response = await dio.get(endpoint);

      if (response.statusCode == 200) {
        if (response.data is List) {
          return (response.data as List)
              .map((json) => DivisionModel.fromJson(json))
              .toList();
        } else {
          throw Exception("Unexpected data format");
        }
      } else {
        throw Exception('Failed to load div code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
