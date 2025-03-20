import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';

class FuelFillingPage extends StatelessWidget {
  const FuelFillingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Fuel Filling",style: appbarTextStyle,),
      ),
    );
  }
}