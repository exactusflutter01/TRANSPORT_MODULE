class Battery_Docno_model {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  Battery_Docno_model(
      {required this.var1,
        required this.var2,
        required this.var3,
        required this.var4,
        required this.var5,
        required this.var6});

  factory Battery_Docno_model.fromJson(Map<String, dynamic> json) {
    return Battery_Docno_model(
      var1: json['DOC_NO'],
      var2: json['DOC_DATE'],
      var3: json['ASSET_ID'],
      var4: json['BATTERY_SERIAL_NO'],
      var5: json['DIV_CODE'],
      var6: '',
    );
  }
}