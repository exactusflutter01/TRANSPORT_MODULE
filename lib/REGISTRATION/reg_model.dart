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
      var6: '',
    );
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
      var1: json['VTYPE_CODE'] ?? '',
      var2: json['VTYPE_NAME'] ?? '',
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}

class FinecodeModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  FinecodeModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory FinecodeModel.fromJson(Map<String, dynamic> json) {
    return FinecodeModel(
      var1: json['FINE_CODE'] ?? '',
      var2: json['FINE_NAME'] ?? '',
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}
