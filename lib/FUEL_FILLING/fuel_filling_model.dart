class paymentMoodModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  paymentMoodModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory paymentMoodModel.fromJson(Map<String, dynamic> json) {
    return paymentMoodModel(
      var1: json['PAYMENT_MODE']??'', 
      var2: '',
      var3: '', 
      var4: '', 
      var5: '', 
      var6: '',);
  }
}
class stationModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  stationModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory stationModel.fromJson(Map<String, dynamic> json) {
    return stationModel(
      var1: json['STATION_NAME']??'', 
      var2: '',
      var3: '', 
      var4: '', 
      var5: '', 
      var6: '',);
  }
}
class fuelTypeModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  fuelTypeModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory fuelTypeModel.fromJson(Map<String, dynamic> json) {
    return fuelTypeModel(
      var1: json['FUELTYPE_NAME'].toString()??'', 
      var2: json['FUELTYPE_CODE'].toString()??'', 
      var3: json['UOM_CODE'].toString()??'', 
      var4: json['FUEL_RATE'] == null ?'':json['FUEL_RATE'].toString(), 
      var5: '', 
      var6: '',);
  }
}
class fuelCardModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  fuelCardModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory fuelCardModel.fromJson(Map<String, dynamic> json) {
    return fuelCardModel(
      var1: json['CARD_NO'].toString()??'', 
      var2: json['ASSET_ID'].toString()??'', 
      var3: json['PAYMENT_MODE'].toString()??'', 
      var4: '', 
      var5: '', 
      var6: '',);
  }
}
class fuelDocNoModel {
  final String var1;
  final String var2;
  final String var3;
  final String var4;
  final String var5;
  final String var6;
  fuelDocNoModel(
      {required this.var1,
      required this.var2,
      required this.var3,
      required this.var4,
      required this.var5,
      required this.var6});

  factory fuelDocNoModel.fromJson(Map<String, dynamic> json) {
    return fuelDocNoModel(
      var1: json['DOC_NO'].toString()??'', 
      var2: json['VEHICLE_CODE'].toString()??'', 
      var3: json['EMP_ID'].toString()??'', 
      var4:json['DIV_CODE'].toString()??'', 
      var5: json['DOC_DATE'].toString()??'',
      var6: '',);
  }
}
