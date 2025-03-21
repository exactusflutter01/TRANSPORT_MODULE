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
      var1: json['DIVISION_CODE'],
      var2: '',
      var3: '',
      var4: '',
      var5: '',
      var6: '',);
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
