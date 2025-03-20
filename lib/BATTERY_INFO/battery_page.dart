import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';

class batteryInfoPage extends StatelessWidget {
  const batteryInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(   appBar: AppBar(
        title: Text("Battery Info",style: appbarTextStyle,),
      ),);
  }
}