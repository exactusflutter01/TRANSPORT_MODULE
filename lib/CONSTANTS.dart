import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
// const String baseUrl = "http://scm06.exactuscloud.com:4016/api";

final Dio dio =
    Dio(BaseOptions(baseUrl: "https://scm06.exactuscloud.com:4016/api"));

final Color commonColor = Color.fromARGB(255, 35, 117, 41);


final TextStyle appbarTextStyle = GoogleFonts.mitr(
  fontWeight: FontWeight.w800,
  color: const Color.fromARGB(255, 35, 117, 41),
  fontSize: 27,
);

final TextStyle mainscreenTextStyle = GoogleFonts.bebasNeue(
  fontWeight: FontWeight.bold,
  // color: const Color.fromARGB(255, 42, 128, 48),
  color: Colors.black,
  fontSize: 25,
);
