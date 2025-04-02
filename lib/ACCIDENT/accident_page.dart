import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/commonDropDown.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

class AccidentPage extends StatefulWidget {
  AccidentPage({super.key});

  @override
  State<AccidentPage> createState() => _AccidentPageState();
}

class _AccidentPageState extends State<AccidentPage> {
  TextEditingController docNo_Controller = TextEditingController();
  TextEditingController docNo_dropdown_Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Accident",
          style: appbarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: docNo_Controller,
                      label: "Doc NO / Type",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                      isMadatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomDropdown(hintText: '', ontap: (){}, controller: docNo_dropdown_Controller, dropDownList: ["Type 1","Type 2"])
                  )
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: docNo_Controller,
                      label: "Doc NO / Type",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                      isMadatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: docNo_Controller,
                      label: "",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
