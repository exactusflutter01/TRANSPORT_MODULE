class Ins_cmpny_model {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  Ins_cmpny_model(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory Ins_cmpny_model.fromJson(Map<String, dynamic> json) {
    return Ins_cmpny_model(
      var1: json['AC_CODE'],
      var2: json['AC_NAME'],
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}

class PolicyTypeModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  PolicyTypeModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory PolicyTypeModel.fromJson(Map<String, dynamic> json) {
    return PolicyTypeModel(
      var1: json['POLICY_TYPE_NAME'],
      var2: json['POLICY_TYPE'],
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}

class DebitaccountModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  DebitaccountModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory DebitaccountModel.fromJson(Map<String, dynamic> json) {
    return DebitaccountModel(
      var1: json['AC_CODE'],
      var2: json['AC_NAME'],
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}

class VehicleCodeModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  VehicleCodeModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory VehicleCodeModel.fromJson(Map<String, dynamic> json) {
    return VehicleCodeModel(
      var1: json['ASSET_ID'] ?? '',
      var2: json['ASSET_NAME'] ?? '',
      var3: json['REG_START_DATE'] ?? '',
      var4: json['REG_EXP_DATE'] ?? '',
      var5: json['VTYPE_NAME'] ?? '',
      var6: json['CURRENT_MILEAGE'] ?? '',
    );
  }
}

class MaxdocNoModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  MaxdocNoModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory MaxdocNoModel.fromJson(Map<String, dynamic> json) {
    return MaxdocNoModel(
      var1: json['DOC_NO'] ?? '',
      var2: '',
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}
