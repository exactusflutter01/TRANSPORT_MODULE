class AccidentDocNoModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  AccidentDocNoModel(
      {required this.var1,
        required this.var2,
        required this.var3,
        required this.var4,
        required this.var5,
        required this.var6});

  factory AccidentDocNoModel.fromJson(Map<String, dynamic> json) {
    return AccidentDocNoModel(
      var1: json['DOC_NO']??'',
      var2: json['DOC_DATE']??'',
      var3: json['ASSET_ID']??'',
      var4: json['BATTERY_SERIAL_NO']??'',
      var5: json['DIV_CODE']??'',
      var6: '',
    );
  }
}
class AccidentFineCodeModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  AccidentFineCodeModel(
      {required this.var1,
        required this.var2,
        required this.var3,
        required this.var4,
        required this.var5,
        required this.var6});

  factory AccidentFineCodeModel.fromJson(Map<String, dynamic> json) {
    return AccidentFineCodeModel(
      var1: json['FINE_CODE']??'',
      var2: json['FINE_NAME']??'',
      var3: '',
      var4: '',
      var5: '',
      var6: '',
    );
  }
}