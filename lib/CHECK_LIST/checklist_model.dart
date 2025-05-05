
class DocNoChecklistModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  DocNoChecklistModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory DocNoChecklistModel.fromJson(Map<String, dynamic> json) {
    return DocNoChecklistModel(
      var1:json['DOC_NO']??'',
      var2:json['DOC_DATE']??'',
      var3:json['DEPT_CODE']??'',
      var4:json['EMP_ID']??'',
      var5: json['ASSET_ID']??'',
      var6: '',
    );
  }
}
class CheckCodeModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  CheckCodeModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory CheckCodeModel.fromJson(Map<String, dynamic> json) {
    return CheckCodeModel(
      var1: (json['CHECK_CODE']??'').toString(),
      var2: (json['CHECK_DESCRIPTION']??'').toString(),
      var3:'',
      var4:'',
      var5: '',
      var6:'',
    );
  }
}
