class DivisionModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  DivisionModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory DivisionModel.fromJson(Map<String, dynamic> json) {
    return DivisionModel(
      var1: json['DIV_CODE'] ?? '',
      var2: '',
      var3: '',
      var4: '',
      var5: '',
      var6: '',);
  }
}

class DocNoModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  DocNoModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory DocNoModel.fromJson(Map<String, dynamic> json) {
    return DocNoModel(
      var1: json['DOC_NO'] ?? '',
      var2: '',
      var3: '',
      var4: '',
      var5: '',
      var6: '',);
  }
}

class VehicleCodeModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  final String var7;
  VehicleCodeModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6,
      required this.var7,
      });

  factory VehicleCodeModel.fromJson(Map<String, dynamic> json) {
    return VehicleCodeModel(
      var1: json['ASSET_ID'] ?? '',
      var2: json['ASSET_NAME'] ?? '',
      var3: json['REG_START_DATE'] ?? '',
      var4: json['REG_EXP_DATE'] ?? '',
      var5:json['VTYPE_NAME'] ??  '',
      var6: json['VTYPE_CODE'] ?? '',
      var7: json['CURRENT_MILEAGE'] ?? '',
      
      );
  }
}

class CreditAccountModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  CreditAccountModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory CreditAccountModel.fromJson(Map<String, dynamic> json) {
    return CreditAccountModel(
      var1: json['AC_CODE'],
      var2: json['AC_NAME'],
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}


// class DivisionModel {
//   final String divisionCode;
//   final String divisionName;

//   DivisionModel({
//     required this.divisionCode,
//     required this.divisionName,
//   });

//   factory DivisionModel.fromJson(Map<String, dynamic> json) {
//     return DivisionModel(
//       divisionCode: json['DIV_CODE'] ?? '',
//       divisionName: json['DIV_NAME'] ?? '',
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'DIV_CODE': divisionCode,
//       'DIV_NAME': divisionName,
//     };
//   }
// }
