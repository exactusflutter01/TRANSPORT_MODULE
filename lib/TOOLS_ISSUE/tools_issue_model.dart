class ToolsIssueDeptModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  ToolsIssueDeptModel(
      {required this.var1,
        required this.var2,
        required this.var3,
        required this.var4,
        required this.var5,
        required this.var6});

  factory ToolsIssueDeptModel.fromJson(Map<String, dynamic> json) {
    return ToolsIssueDeptModel(
      var1: json['DEPT_CODE']??'',
      var2: json['DEPT_NAME']??'',
      var3: '',
      var4:'',
      var5: '',
      var6: '',
    );
  }
}