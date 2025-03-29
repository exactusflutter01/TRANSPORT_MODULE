import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:http/http.dart' as http;
import 'package:trans_module/INSURANCE/MODELS/insu_model.dart';

class Insurance_Repo {
  fetchinsCmpny() async {
    try {
      final response = await dio.get('/insurance/insurance_company_get');
      print(dio);
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map((item) => Ins_cmpny_model.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error in Insurance Repo $e");
    }
  }

// /insurance/debit_code_get
  fetchPolicyType() async {
    try {
      final response = await dio.get('/insurance/policy_type_get');
      print(dio);
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map((item) => PolicyTypeModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error in Insurance Repo $e");
    }
  }

  fetchDebitCode() async {
    try {
      final response = await dio.get('/insurance/debit_code_get');
      print(dio);
      print("response.data ${response.data}");
      final modelData = (response.data)
          .map((item) =>
              DebitaccountModel.fromJson(item as Map<String, dynamic>))
          .toList();
      print("modelData $modelData");
      return modelData;
    } catch (e) {
      print("Error in Insurance Repo $e");
    }
  }

  InsuranaceInsert(
      vehcode,
      docno,
      docdate,
      invno,
      invdate,
      supcode,
      costbookno,
      divcode,
      deptcode,
      inscompany,
      strtdte,
      expdate,
      policytype,
      policyno,
      amount,
      remarks,
      currcode,
      exrate,
      active,
      userid,
      strtread,
      endreading,
      empid,
      accodedr,
      docref,
      exptypecode,
      expsubtype_code,
      exp_code,
      verified,
      verifieddate,
      verifiedby) async {
    try {
      Map data = {
        "COMPANY_CODE": "$Gscompanycode",
        "VEHICLE_CODE": vehcode,
        "DOC_NO": docno,
        "DOC_DATE": docdate,
        "INVOICE_NO": invno,
        "INVOICE_DATE": invdate,
        "SUP_CODE": supcode,
        "COST_BOOK_NO": costbookno,
        "DIV_CODE": divcode,
        "DEPT_CODE": deptcode,
        "INSURANCE_COMPANY": inscompany,
        "START_DATE": strtdte,
        "EXP_DATE": expdate,
        "POLICY_TYPE": policytype,
        "POLICY_NO": policyno,
        "AMOUNT": amount,
        "REMARKS": remarks,
        "CURR_CODE": currcode,
        "EX_RATE": exrate,
        "ACTIVE": active,
        "USER_ID": userid,
        "START_METER_READING": strtread,
        "END_METER_READING": endreading,
        "EMP_ID": empid,
        "AC_CODE_DR": accodedr,
        "DOC_REF": docref,
        "EXPTYPE_CODE": exptypecode,
        "EXPSUBTYPE_CODE": expsubtype_code,
        "EXP_CODE": exp_code,
        "VERIFIED": verified,
        "VERIFIED_DATE": verifieddate,
        "VERIFIED_BY": verifiedby
      };
      final response = await dio.post('/insurance/insurance_insert',
          data: data,
          options: Options(headers: {
            'Content-Type': 'application/json',
          }));

      if (response.statusCode == 200) {
        print('Data inserted successfully');
      } else {
        print('Failed to insert data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during data insertion: $e');
    }
  }
}
