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
