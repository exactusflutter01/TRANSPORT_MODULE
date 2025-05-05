
import 'package:dio/dio.dart';
import 'package:trans_module/CHECK_LIST/checklist_model.dart';
import 'package:trans_module/CONSTANTS.dart';

class ServiceRepository {
  Future<ApiResponse> fetchDocNo(div_code) async {
    print("REPOSITORY div_code $div_code");
    try {
      final response =
          await dio.get('/CHECK_LIST/doc_no_get/$cmpCode');
      if (response.statusCode == 200) {
        if ((response.data as List).isNotEmpty) {
          final modelData = (response.data as List)
              .map((item) => DocNoChecklistModel.fromJson(item))
              .toList();
          print("REPOSITORY response.data ${response.data}");
          print("REPOSITORY modelData ${modelData[0].var1}");
          return ApiResponse(data: modelData);
        } else {
          return ApiResponse(data: []);
        }
      } else {
        return ApiResponse(
            error: "Error occurs while fetching Documnet Number ");
      }
    } on DioException catch (e) {
      return ApiResponse(error: "Error: ${e.response?.data["error"]}");
    } catch (e) {
      print("ERROR : $e");
      return ApiResponse(error: "Error occurs while fetching Documnet Number");
    }
  }

  Future<ApiResponse> fetchCheckCode(asset_id) async {
    try {
      final response =
          await dio.get('/CHECK_LIST/check_code_get/$cmpCode');
      if (response.statusCode == 200) {
        if ((response.data as List).isNotEmpty) {
          final modelData = (response.data as List)
              .map((item) => CheckCodeModel.fromJson(item))
              .toList();
          print("REPOSITORY response.data ${response.data}");
          print("REPOSITORY modelData ${modelData[0].var1}");
          return ApiResponse(data: modelData);
        } else {
          return ApiResponse(data: []);
        }
      } else {
        return ApiResponse(error: "Error occurs while fetching Tyre Codes");
      }
    } on DioException catch (e) {
      return ApiResponse(error: "Error: ${e.response?.data["error"]}");
    } catch (e) {
      print("ERROR : $e");
      return ApiResponse(error: "Error occurs while fetching Tyre Codes");
    }
  }

  Future<ApiResponse> fetchMaxDocNo() async {
    try {
      final response = await dio.get('/CHECK_LIST/max_doc_no/$cmpCode');
      if (response.statusCode == 200) {
        if ((response.data as List).isNotEmpty) {
          return ApiResponse(data: response.data[0]['MAX_DOC_NO'] ?? 0);
        } else {
          return ApiResponse(data: 0);
        }
      } else {
        return ApiResponse(
            error: "Error occurs while fetching max document number");
      }
    } on DioException catch (e) {
      return ApiResponse(error: "Error: ${e.response?.data["error"]}");
    } catch (e) {
      print("ERROR : $e");
      return ApiResponse(
          error: "Error occurs while fetching max document number");
    }
  }

  Future<ApiResponse> insertPuncherDetails(puncherDetails) async {
    try {
      final response = await dio.post('/tyre_puncher/insert',
      data: puncherDetails
      );
      if (response.statusCode == 200 && response.data == 1) {
        return ApiResponse(data: 1);

      }else{
         return ApiResponse(error:"Error occurs while inserting puncher details");
      }
    } on DioException catch (e) {
      return ApiResponse(error: "Error: ${e.response?.data["error"]}");
    } catch (e) {
      print("ERROR : $e");
      return ApiResponse(error: "Error occurs while inserting puncher details");
    }
  }
}
