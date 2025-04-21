import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/ACCIDENT/ACCIDENT_BLOC/accident_bloc.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/INSURANCE/INSU_BLOC/insu_bloc.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';
import 'package:trans_module/WIDGETS/CustomAlertDialog.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDateTime.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import 'package:trans_module/WIDGETS/commonDropDown.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

class AccidentPage extends StatefulWidget {
  AccidentPage({super.key});

  @override
  State<AccidentPage> createState() => _AccidentPageState();
}

class _AccidentPageState extends State<AccidentPage> {
  TextEditingController docNo_Controller = TextEditingController();
  TextEditingController doc_type_Controller = TextEditingController();
  TextEditingController docNo_date_Controller = TextEditingController();
  TextEditingController division_Controller = TextEditingController();
  TextEditingController vechicle_code_Controller = TextEditingController();
  TextEditingController vechicle_name_Controller = TextEditingController();
  TextEditingController tailer_no_Controller = TextEditingController();
  TextEditingController dateTimeAccident_Controller = TextEditingController();
  TextEditingController accident_status_Controller = TextEditingController();
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
    return BlocListener<AccidentBloc, AccidentState>(
      listener: (context, state) async {
        if (state.isLoading == false) {
          if (state.searchDialogueTitle == 'Document Numbers' &&
              state.searchDialogueData.isNotEmpty) {
            final data = await searchBox(
                context, state.searchDialogueTitle, state.searchDialogueData);
            docNo_Controller.text = data.var1;
          }
          if (state.searchDialogueTitle == 'Fine Codes' &&
              state.searchDialogueData.isNotEmpty) {
            final data = await searchBox(
                context, state.searchDialogueTitle, state.searchDialogueData);
            fine_Controller.text = data.var1;
          }
          if (state.alertTitle == 'Failed' &&
              state.searchDialogueData.isEmpty) {
            CustomAlertDialog.show(
                context: context,
                title: state.alertTitle,
                message: state.alertMsg,
                imagePath: errorAnimation);
          }
          if (state.alertTitle == 'Warning' &&
              state.searchDialogueData.isEmpty) {
            CustomAlertDialog.show(
                context: context,
                title: state.alertTitle,
                message: state.alertMsg,
                imagePath: warningAnimation);
          }
          if (state.alertTitle == 'Success' &&
              state.searchDialogueData.isEmpty) {
            CustomAlertDialog.show(
                context: context,
                title: state.alertTitle,
                message: state.alertMsg,
                imagePath: succesAnimation);
          }
          print("IN LISTENER state.alertTitle  ${state.alertTitle}");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Accident",
            style: appbarTextStyle,
          ),
          actions: [
            CommonButton(
                onSubmitted: () async {
                  context
                      .read<AccidentBloc>()
                      .add(AccidentEvent.insertAccidentData({
                        "COMPANY_CODE": cmpCode,
                        "DOC_TYPE": doc_type_Controller.text,
                        "DOC_NO": docNo_Controller.text,
                        "DOC_DATE": docNo_date_Controller.text,
                        "VEHICLE_CODE": vechicle_code_Controller.text,
                        "EMP_ID": " ",
                        "CLASSIFICATION": "",
                        "FINE_CODE": fine_Controller.text,
                        "AMOUNT": amount_Controller.text,
                        "LOCATION": location_Controller.text,
                        "ACCIDENT_STATUS": accident_status_Controller.text,
                        "REMARKS": remarks_Controller.text,
                        "USER_ID": userId,
                        "USER_DT": await systemDateTimeFetch(),
                        // "USER_DT": "2025-04-07T14:30:00",
                        "ACCIDENT_DATE": await convertToDateTimeWithT(
                            dateTimeAccident_Controller.text),
                        // "ACCIDENT_DATE":"2025-04-07T14:30:00",
                        "START_METER_READING": start_meter_Controller.text,
                        "END_METER_READING": end_meter_Controller.text,
                        "AC_CODE_DR": debit_account_Controller.text,
                        "AC_CODE_CR": credit_account_Controller.text,
                        "OTHER_AMOUNT": other_amount_Controller.text,
                        "DOC_REF": "",
                        "EXPTYPE_CODE": "",
                        "EXPSUBTYPE_CODE": "",
                        "EXP_CODE": "",
                        "VERIFIED_DATE": "",
                        "VERIFIED_BY": "",
                        "POLICE_REP_NO": police_report_no_Controller.text,
                        "POLICE_PAPER": police_paper_Controller.text,
                        "INSURANCE_CLAIM_NO": claim_no_Controller.text,
                        "CLAIM_SETTLEMENT": claim_settelement_Controller.text,
                        "TRAILER_NO": "",
                        "GOODS_TYPE": type_goods_Controller.text,
                        "ACCIDENT_DETAILS": accident_details_Controller.text,
                        "DAMAGE_TYPE": damage_type_Controller.text,
                        "ACTION_TAKEN": action_taken_Controller.text,
                        "TRANS_TYPE": "",
                        "COST_BOOK_NO": "",
                        "DIV_CODE": "",
                        "DEPT_CODE": ""
                      }));
                },
                label: "Save",
                imagePath: 'assets/icons/save.png')
          ],
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
                          context.read<AccidentBloc>().add(
                              AccidentEvent.fetchDocNo(division_Controller.text,
                                  doc_type_Controller.text));
                        },
                        isMadatory: true,
                      ),
                    ),
                    10.widthBox,
                    Expanded(
                        child: CustomDropdown(
                            hintText: '',
                            ontap: (value) {
                              doc_type_Controller.text = value;
                            },
                            controller: doc_type_Controller,
                            dropDownList: ["T1", "T2"]))
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
                    BlocListener<RegBloc, RegState>(
                      listener: (context, state) async {
                        print("INLISTENER DIVISION ${state.searchDialogData}");

                        if (state.searchDialogData.isNotEmpty &&
                            state.isLoading == false) {
                          final data = await searchBox(context,
                              'Division Codes', state.searchDialogData);
                          division_Controller.text = data.var1;
                        }
                      },
                      child: Expanded(
                        child: CustomTextfield(
                          cntrollr: division_Controller,
                          label: "Division",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            context
                                .read<RegBloc>()
                                .add(RegEvent.fetchdivcodes());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    BlocListener<InsuBloc, InsuranceState>(
                      listener: (context, state) async {
                        if (state.isLoading == false) {
                          if (state.SearchDialogueName == 'Vechicle Code' &&
                              state.ItemsList.isNotEmpty) {
                            final data = await searchBox(context,
                                state.SearchDialogueName, state.ItemsList);
                            vechicle_code_Controller.text = data.var1;
                            vechicle_name_Controller.text = data.var2;
                          }
                        }
                      },
                      child: Expanded(
                        child: CustomTextfield(
                          isMadatory: true,
                          cntrollr: vechicle_code_Controller,
                          label: "Vechicle Code",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            context
                                .read<InsuBloc>()
                                .add(InsuEvent.fetchVehicleCode(division_Controller.text));
                          },
                        ),
                      ),
                    ),
                    10.widthBox,
                    Expanded(
                      child: CustomTextfield(
                        cntrollr: vechicle_name_Controller,
                        label: "",
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                CustomTextfield(
                  cntrollr: tailer_no_Controller,
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
                          hintText: 'Accident Status',
                          ontap: (value) {
                            accident_status_Controller.text = value;
                          },
                          controller: accident_status_Controller,
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
                          context
                              .read<AccidentBloc>()
                              .add(AccidentEvent.fetchFineCode());
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
      ),
    );
  }
}
