
class DocNoTyrePuncherModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  DocNoTyrePuncherModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory DocNoTyrePuncherModel.fromJson(Map<String, dynamic> json) {
    return DocNoTyrePuncherModel(
      var1:json['DOC_NO']??'',
      var2:json['DOC_DATE']??'',
      var3:json['VEHICLE_CODE']??'',
      var4:json['DIV_CODE']??'',
      var5: '',
      var6: '',
    );
  }
}
class TyreCodeTyrePuncherModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  TyreCodeTyrePuncherModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory TyreCodeTyrePuncherModel.fromJson(Map<String, dynamic> json) {
    return TyreCodeTyrePuncherModel(
      var1: (json['TYRE_CODE']??'').toString(),
      var2: (json['TYRE_SR_NO']??'').toString(),
      var3: (json['SERIAL_NO']?? '').toString(),
      var4: (json['PROD_CODE']??'').toString(),
      var5: (json['TYRE_POS_CODE']??'').toString(),
      var6: (json['TYRE_TYPE']??'').toString(),
    );
  }
}
