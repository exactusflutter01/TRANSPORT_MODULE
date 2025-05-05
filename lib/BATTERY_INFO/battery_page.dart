import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/CustomAlertDialog.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

import '../WIDGETS/TextfieldWidgets.dart';
import '../WIDGETS/TextfieldWithDate.dart';
import 'BATTERY_BLOC/battery_bloc.dart';

class batteryInfoPage extends StatefulWidget {
  batteryInfoPage({super.key});

  @override
  State<batteryInfoPage> createState() => _batteryInfoPageState();
}

class _batteryInfoPageState extends State<batteryInfoPage> {
  TextEditingController docNo_Controller = TextEditingController();

  TextEditingController docDate_Controller = TextEditingController();

  TextEditingController division_controller = TextEditingController();

  TextEditingController suppcode_controller = TextEditingController();

  TextEditingController suppname_controller = TextEditingController();

  TextEditingController pono_controller = TextEditingController();

  TextEditingController poDate_controller = TextEditingController();

  TextEditingController assetId_controller = TextEditingController();

  TextEditingController assetName_controller = TextEditingController();

  TextEditingController DriverId_controller = TextEditingController();

  TextEditingController DriverName_controller = TextEditingController();

  TextEditingController city_controller = TextEditingController();

  TextEditingController value_controller = TextEditingController();

  TextEditingController batteryslno_controller = TextEditingController();

  TextEditingController make_controller = TextEditingController();

  TextEditingController batterySize_controller = TextEditingController();

  TextEditingController voltage_controller = TextEditingController();

  TextEditingController ampere_controller = TextEditingController();

  TextEditingController remarks_controller = TextEditingController();
  @override
  void initState() {
    division_controller.text = "10";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Battery Info",
          style: appbarTextStyle,
        ),
        actions: [
          CommonButton(
            label: 'Save',
            imagePath: 'assets/icons/save.png',
            onSubmitted: ()async {
              context.read<BatteryBloc>().add(BatteryEvent.save(
                {
  "COMPANY_CODE": cmpCode,
  "ASSET_ID": assetId_controller.text,
  "EMP_ID": '',
  "SR_NO": "",
  "SUPP_CODE": suppcode_controller.text,
  "MAKE": make_controller.text,
  "BATTERY_SIZE": batterySize_controller.text,
  "QTY": '',
  "VALUE": value_controller.text,
  "VOLTAGE": voltage_controller.text,
  "AMPERE": ampere_controller.text,
  "PO_NO": pono_controller.text,
  "PO_DATE": poDate_controller.text,
  "DATE_LAST_REPLACE": "",
  "REMARKS":remarks_controller.text,
  "USER_ID": userId,
  "USER_DT":await systemDateTimeFetch(),
  "BATTERY_SERIAL_NO": batteryslno_controller.text,
  "DOC_DATE":docDate_Controller.text,
  "DOC_NO": docNo_Controller.text,
  "DIV_CODE":division_controller.text,
  "SUPP_NAME": suppname_controller.text,
  "EXP_CODE": "",
  "EXPTYPE_CODE": "",
  "EXPSUBTYPE_CODE": "",
  "COST_BOOK_NO": "",
  "AC_CODE_CR": "",
  "AC_CODE_DR": "",
  "DEPT_CODE": ""
}

              ));
            },
          ),
        ],
      ),
      body: BlocListener<BatteryBloc, BatteryState>(
        listener: (context, state) async {
          if (state.isLoading == false) {
            if (state.searchDialogTitle == 'Document Numbers') {
              final data = await searchBox(
                  context, state.searchDialogTitle, state.searchDialogData);
              docNo_Controller.text = data.var1;
            }

            if (state.alertTitle == 'Failed' &&
                state.searchDialogData.isEmpty) {
              CustomAlertDialog.show(
                  context: context,
                  title: state.alertTitle,
                  message: state.alertMsg,
                  imagePath: errorAnimation);
            }
            if (state.alertTitle == 'Warning' &&
                state.searchDialogData.isEmpty) {
              CustomAlertDialog.show(
                  context: context,
                  title: state.alertTitle,
                  message: state.alertMsg,
                  imagePath: warningAnimation);
            }
            if (state.alertTitle == 'Success' &&
                state.searchDialogData.isEmpty) {
              CustomAlertDialog.show(
                  context: context,
                  title: state.alertTitle,
                  message: state.alertMsg,
                  imagePath: succesAnimation);
            }

                     if (state.maxDocNo != '') {
            docNo_Controller.text = state.maxDocNo;
          }
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomTextfield(
                  cntrollr: docNo_Controller,
                  label: "Doc NO",
                  // keyboardType: TextInputType.numberWithOptions(),
                  suffixIcon: Icon(Icons.search),
                  onSubmitted: () {
                    context
                        .read<BatteryBloc>()
                        .add(BatteryEvent.docnofetch(division_controller.text));
                  },
                  isMadatory: true,
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomDateField(
                        controller: docDate_Controller,
                        label: "Doc Date",
                        isMadatory: true,
                      ),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                          cntrollr: division_controller,
                          label: "Division",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            searchBox(context, 'division', []);
                          }),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                          cntrollr: suppcode_controller,
                          label: "Supp code",
                          isMadatory: true,
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            searchBox(context, 'supp code', []);
                          }),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: suppname_controller,
                        label: "",
                        isReadonly: true,
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: pono_controller,
                        label: "Po No",
                      ),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomDateField(
                        controller: division_controller,
                        label: "Po Date",
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                          cntrollr: assetId_controller,
                          label: "Asset id",
                          isMadatory: true,
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            searchBox(context, 'Asset', []);
                          }),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: assetName_controller,
                        label: "",
                        isReadonly: true,
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                          cntrollr: DriverId_controller,
                          label: "Driver",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            searchBox(context, 'Driver', []);
                          }),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: DriverName_controller,
                        label: "",
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: city_controller,
                        label: "City",
                      ),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: value_controller,
                        label: "Value",
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                CustomTextfield(
                  cntrollr: batteryslno_controller,
                  label: "Battery Serial No",
                  // keyboardType: TextInputType.numberWithOptions(),
                  isMadatory: true,
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: make_controller,
                        label: "Make",
                      ),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: batterySize_controller,
                        label: "Battery Size",
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: voltage_controller,
                        label: "Voltage",
                      ),
                    ),
                    10.widthBox,
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: ampere_controller,
                        label: "Ampere",
                      ),
                    ),
                  ],
                ),
                20.heightBox,
                CustomTextfield(
                  cntrollr: remarks_controller,
                  label: "remarks",
                  Maxline: 3,
                ),
                20.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
