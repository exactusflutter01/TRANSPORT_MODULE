import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

String succesAnimation = "assets/animations/success.json";
String warningAnimation = "assets/animations/warning.json";
String errorAnimation = "assets/animations/error.json";
String loadingAnimation = "assets/animations/loading.json";

// var baseUrl = 'http://192.168.1.13:3000/api/';
var baseUrl = 'https://scm06.exactuscloud.com:4030/api';
final Dio dio = Dio(BaseOptions(baseUrl: baseUrl));

final Color commonColor = Color.fromARGB(255, 29, 77, 37);
const String cmpCode = "BSG";
const String userId = "AWAREARN";
final TextStyle appbarTextStyle = GoogleFonts.mitr(
  fontWeight: FontWeight.w800,
  color: const Color.fromARGB(255, 49, 117, 61),
  fontSize: 27,
);

final TextStyle mainscreenTextStyle = GoogleFonts.mitr(
  fontWeight: FontWeight.w700,
  // color: const Color.fromARGB(255, 42, 128, 48),
  color: Colors.black,
  fontSize: 19,
);

String systemDateFetch() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat("yyyy-MM-dd").format(now);
  return formattedDate;
}

String systemDateTimeFetch() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss").format(now);
  return formattedDate;
}

String convertToDateTimeWithT(String input) {
  // Parse input string to DateTime object
  DateTime parsedDate = DateFormat("yyyy-MM-dd HH:mm").parse(input);

  // Format to ISO-like string with "T"
  String formattedDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss").format(parsedDate);

  return formattedDate;
}
