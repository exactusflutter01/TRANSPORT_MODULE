import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
// const String baseUrl = "http://scm06.exactuscloud.com:4016/api";

final Dio dio =
    Dio(BaseOptions(baseUrl: "https://scm06.exactuscloud.com:4029/api"));

final Color commonColor = Color.fromARGB(255, 29, 77, 37);


final TextStyle appbarTextStyle = GoogleFonts.mitr(
  fontWeight: FontWeight.w800,
  color: const Color.fromARGB(255, 29, 77, 37),
  fontSize: 27,
);

final TextStyle mainscreenTextStyle = GoogleFonts.mitr(
  fontWeight: FontWeight.w700,
  // color: const Color.fromARGB(255, 42, 128, 48),
  color: Colors.black,
  fontSize: 19,
);
