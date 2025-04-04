import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDateTime.dart';
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
  TextEditingController docNo_date_Controller = TextEditingController();
  TextEditingController division_Controller = TextEditingController();
  TextEditingController tailer_no_Controller = TextEditingController();
  TextEditingController dateTimeAccident_Controller = TextEditingController();
  TextEditingController accident_type_Controller = TextEditingController();
  TextEditingController driver_Controller = TextEditingController();
  TextEditingController fine_Controller = TextEditingController();
  TextEditingController amount_Controller = TextEditingController();
  TextEditingController other_amount_Controller = TextEditingController();
  TextEditingController police_report_no_Controller = TextEditingController();
  TextEditingController police_paper_Controller = TextEditingController();
  TextEditingController claim_no_Controller = TextEditingController();
  TextEditingController claim_settelement_Controller = TextEditingController();
  TextEditingController location_Controller = TextEditingController();
  TextEditingController type_goods_Controller = TextEditingController();
  TextEditingController damage_type_Controller = TextEditingController();
  TextEditingController accident_details_Controller = TextEditingController();
  TextEditingController action_taken_Controller = TextEditingController();
  TextEditingController remarks_Controller = TextEditingController();
  TextEditingController start_meter_Controller = TextEditingController();
  TextEditingController end_meter_Controller = TextEditingController();
  TextEditingController debit_account_Controller = TextEditingController();
  TextEditingController credit_account_Controller = TextEditingController();
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
                      child: CustomDropdown(
                          hintText: '',
                          ontap: (value) {
                            docNo_dropdown_Controller.text = value;
                          },
                          controller: docNo_dropdown_Controller,
                          dropDownList: ["Type 1", "Type 2"]))
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                      child: CustomDateField(
                    controller: docNo_date_Controller,
                    label: 'Doc Date',
                    isMadatory: true,
                  )),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: division_Controller,
                      label: "Division",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      isMadatory: true,
                      cntrollr: division_Controller,
                      label: "Vechicle Code",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: tailer_no_Controller,
                      label: "",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: division_Controller,
                label: "Tailer No",
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomDateTimeField(
                      controller: dateTimeAccident_Controller,
                      label: 'Date and time of accident',
                      isMandatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomDropdown(
                        hintText: '',
                        ontap: (value) {
                          accident_type_Controller.text = value;
                        },
                        controller: accident_type_Controller,
                        dropDownList: ["Type 1", "Type 2"]),
                  )
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      isMadatory: true,
                      cntrollr: driver_Controller,
                      label: "Driver",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: driver_Controller,
                      label: "",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      isMadatory: true,
                      cntrollr: fine_Controller,
                      label: "Fine",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: fine_Controller,
                      label: "",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      isMadatory: true,
                      cntrollr: amount_Controller,
                      label: "Amout",
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: other_amount_Controller,
                      label: "Other Amount",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: police_report_no_Controller,
                      label: "Police Report No",
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomDropdown(
                        hintText: 'Police Paper',
                        ontap: (value) {
                          police_paper_Controller.text = value;
                        },
                        controller: police_paper_Controller,
                        dropDownList: ["Type 1", "Type 2"]),
                  )
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: claim_no_Controller,
                      label: "Claim No",
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomDropdown(
                        hintText: 'Claim Settle By',
                        ontap: (value) {
                          claim_settelement_Controller.text = value;
                        },
                        controller: claim_settelement_Controller,
                        dropDownList: ["Type 1", "Type 2"]),
                  )
                ],
              ),
 20.heightBox,
               CustomTextfield(
                      cntrollr: location_Controller,
                      label: "Location",
                    ),

                       20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      
                      cntrollr: type_goods_Controller,
                      label: "Type of goods",
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: damage_type_Controller,
                      label: "Damage Type",
                    ),
                  ),
                ],
              ),

                       20.heightBox,
                        CustomTextfield(
                      Maxline: 2,
                      cntrollr: accident_details_Controller,
                      label: "Accident Details",
                    ),
                     20.heightBox,
            CustomTextfield(
                       Maxline: 2,
                      cntrollr: action_taken_Controller,
                      label: "Action to be taken",
                    ),
                     20.heightBox,
            CustomTextfield(
                       Maxline: 2,
                      cntrollr: remarks_Controller,
                      label: "Remarks",
                    ),
20.heightBox,
                      Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      isMadatory: true,
                      cntrollr: start_meter_Controller,
                      label: "Start Meter Reading",
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                       isMadatory: true,
                      cntrollr: end_meter_Controller,
                      label: "End Meter Reading",
                    ),
                  ),
                ],
              ),

              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                
                      cntrollr: debit_account_Controller,
                      label: "Debit Account Code",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: fine_Controller,
                      label: "",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                
                      cntrollr: credit_account_Controller,
                      label: "Credit Account Code",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: fine_Controller,
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
