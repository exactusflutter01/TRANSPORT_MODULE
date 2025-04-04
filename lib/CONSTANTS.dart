import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

final Dio dio =
    Dio(BaseOptions(baseUrl: "https://scm06.exactuscloud.com:4030/api"));

final Color commonColor = Color.fromARGB(255, 29, 77, 37);
const String cmpCode ="BSG";
const String userId ="AWAREARN";
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
  String formattedDate = DateFormat("dd/MM/yyy").format(now);
  return formattedDate;
}
