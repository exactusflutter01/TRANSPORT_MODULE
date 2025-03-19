import 'package:flutter/material.dart';

extension SizedBoxExtnsion on num {
  SizedBox get widthBox => SizedBox(width: toDouble());
  SizedBox get heightBox => SizedBox(height: toDouble());
}
