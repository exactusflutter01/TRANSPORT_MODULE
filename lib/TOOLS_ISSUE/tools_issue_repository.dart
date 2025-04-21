import 'package:dio/dio.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/TOOLS_ISSUE/tools_issue_model.dart';

class ToolsIssueRepository {
  Future<List<ToolsIssueDeptModel>> fetchDeptCode() async {
    try {
      final response =
          await dio.get('/tools_issue/dept_code/get/$cmpCode', options: Options(
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ));
      print(response.realUri);
      print("response.data ${response.data}");
      print("response.statusCode ${response.statusCode}");
      if (response.statusCode == 200) {
        List<ToolsIssueDeptModel> modelData = (response.data as List)
            .map((item) =>
                ToolsIssueDeptModel.fromJson(item as Map<String, dynamic>))
            .toList();
        print("modelData $modelData");

        return modelData;
      } else if (response.statusCode == 404) {
        print("⚠️ No data found for given parameters.");
        return [];
      } else {
        throw Exception("Failed to fetch documents: ${response.statusCode}");
      }
    } catch (e) {
      print("Error in Accident Repo $e");
      throw Exception("Failed to fetch documents: $e");
    }
  }
}
