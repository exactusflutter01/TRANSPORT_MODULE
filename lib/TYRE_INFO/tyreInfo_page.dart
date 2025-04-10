import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonTable.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

class TyreInfoPage extends StatelessWidget {
  TyreInfoPage({super.key});
  TextEditingController vechicle_code_controller = TextEditingController();
  TextEditingController group_controller = TextEditingController();
  TextEditingController axle_type_controller = TextEditingController();
  TextEditingController reg_date_controller = TextEditingController();
  TextEditingController reg_exp_date_controller = TextEditingController();
  TextEditingController initial_milage_controller = TextEditingController();
  TextEditingController current_milage_controller = TextEditingController();
  TextEditingController front_tyres_controller = TextEditingController();
  TextEditingController rear_tyres_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tyre Info",
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
                      cntrollr: vechicle_code_controller,
                      label: "Vechicle Code",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: vechicle_code_controller,
                      label: "",
                    ),
                  )
                ],
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: group_controller,
                label: "Group",
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: axle_type_controller,
                      label: "Axle Type",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'Axle Type', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: axle_type_controller,
                      label: "",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              Row(children: [
                Expanded(
                    child: CustomDateField(
                  controller: reg_date_controller,
                  label: 'Reg Date',
                )),
                10.widthBox,
                Expanded(
                    child: CustomDateField(
                  controller: reg_exp_date_controller,
                  label: 'Reg Exp Date',
                )),
              ]),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: initial_milage_controller,
                      label: "Initial Milage",
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: current_milage_controller,
                      label: "Current Milage",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: front_tyres_controller,
                      label: "Front Tyres",
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: rear_tyres_controller,
                      label: "Rear Tyres",
                    ),
                  ),
                ],
              ),
              20.heightBox,
           customTable(tableHead,tableData)
            ],
          ),
        ),
      ),
    );
  }

  List tableHead = [
    "Sr. No",
    "Tyre code",
    "Tyre Serial No",
    "Description",
    "Amount",
    "Transaction Date",
    "Start Meter Reading",
    "End Meter Reading",
    "Tyre Status",
  ];

  List<List<dynamic>> tableData = [
    [
      1,
      "TY001",
      "TSN1001",
      "Front Left",
      2500.00,
      "01/04/2025",
      12000.0,
      12500.0,
      true
    ],
    [
      2,
      "TY002",
      "TSN1002",
      "Front Right",
      2450.00,
      "02/04/2025",
      12500.0,
      13000.0,
      true
    ],
    [
      3,
      "TY003",
      "TSN1003",
      "Rear Left",
      2600.00,
      "03/04/2025",
      13000.0,
      13500.0,
      false
    ],
    [
      4,
      "TY004",
      "TSN1004",
      "Rear Right",
      2550.00,
      "04/04/2025",
      13500.0,
      14000.0,
      true
    ],
    [
      5,
      "TY005",
      "TSN1005",
      "Spare",
      2400.00,
      "05/04/2025",
      14000.0,
      14000.0,
      false
    ],
  ];
}
