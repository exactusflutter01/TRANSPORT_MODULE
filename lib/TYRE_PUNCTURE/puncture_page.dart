import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/INSURANCE/INSU_BLOC/insu_bloc.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';
import 'package:trans_module/TYRE_PUNCTURE/TYRE_PUNCHER_BLOC/tyre_puncher_bloc.dart';
import 'package:trans_module/WIDGETS/CustomAlertDialog.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import '../CONSTANTS.dart';
import '../WIDGETS/TextfieldWidgets.dart';
import '../WIDGETS/TextfieldWithDate.dart';
import '../WIDGETS/search_box.dart';

class TyrePuncturePage extends StatefulWidget {
  TyrePuncturePage({super.key});

  @override
  State<TyrePuncturePage> createState() => _TyrePuncturePageState();
}

class _TyrePuncturePageState extends State<TyrePuncturePage> {
  TextEditingController docNo_Controller = TextEditingController();

  TextEditingController docDate_Controller = TextEditingController();

  TextEditingController division_controller = TextEditingController();

  TextEditingController vehiclecode_controller = TextEditingController();

  TextEditingController vehiclename_controller = TextEditingController();

  TextEditingController Tyreposition_controller = TextEditingController();

  TextEditingController Tyrepositiondes_controller = TextEditingController();

  TextEditingController punctureDate_controller = TextEditingController();

  TextEditingController meterReading_controller = TextEditingController();

  TextEditingController Amount_controller = TextEditingController();

  TextEditingController DriverId_controller = TextEditingController();

  TextEditingController DriverName_controller = TextEditingController();

  TextEditingController DocumentRef_controller = TextEditingController();

  TextEditingController remarks_controller = TextEditingController();

  TextEditingController debitAccCode_controller = TextEditingController();

  TextEditingController debitAccname_controller = TextEditingController();

  TextEditingController creditAccCode_controller = TextEditingController();

  TextEditingController creditAccname_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tyre Puncture",
            style: appbarTextStyle,
          ),
          actions: [
            CommonButton(
              onSubmitted: () async {
                context
                    .read<TyrePuncherBloc>()
                    .add(TyrePuncherEvent.save(tyrePuncherDetails: {
                      "COMPANY_CODE": cmpCode,
                      "VEHICLE_CODE": vehiclecode_controller.text,
                      "AXLE_TYPE": '',
                      "SERIAL_NO": 1,
                      "TYRE_CODE": '',
                      "TYRE_SR_NO": "",
                      "TYRE_PROPERTIES": "",
                      "TYRE_POS_CODE": Tyreposition_controller.text,
                      "TYRE_TYPE": "",
                      "PROD_CODE": "",
                      "PUNCTURE_DATE": punctureDate_controller.text,
                      "AMOUNT": Amount_controller.text,
                      "USER_ID": userId,
                      "USER_DT": await systemDateTimeFetch(),
                      "DOC_NO": docNo_Controller.text,
                      "DOC_DATE": await systemDateFetch(),
                      "REMARKS": remarks_controller.text,
                      "END_METER_READING": meterReading_controller.text,
                      "AC_CODE_DR": debitAccCode_controller.text,
                      "AC_CODE_CR": creditAccCode_controller.text,
                      "EMP_ID": "",
                      "DOC_REF": DocumentRef_controller.text,
                      "EXPTYPE_CODE": "",
                      "EXPSUBTYPE_CODE": "",
                      "EXP_CODE": "",
                      "VERIFIED": "Y",
                      "VERIFIED_BY": userId,
                      "VERIFIED_DATE": await systemDateFetch(),
                      "COST_BOOK_NO": " ",
                      "DIV_CODE": division_controller.text,
                      "DEPT_CODE": " "
                    }));
              },
              label: 'Save',
              imagePath: 'assets/icons/save.png',
            ),
          ],
        ),
        body: BlocListener<TyrePuncherBloc, TyrePuncherState>(
          listener: (context, state) async {
            print("state.searchDialogueTitle ${state.searchDialogueTitle}");
            print("state.alertTitle ${state.alertTitle}");
            if (state.isLoading == false) {
              if (state.searchDialogueTitle == 'Document Numbers') {
                final data = await searchBox(context, state.searchDialogueTitle,
                    state.searchDialogueData);
                docNo_Controller.text = data.var1;
              }
              if (state.searchDialogueTitle == 'Tyre Position') {
                final data = await searchBox(context, state.searchDialogueTitle,
                    state.searchDialogueData);
                Tyreposition_controller.text = data.var5;
              }
              if (state.alertTitle == 'Success') {
                CustomAlertDialog.show(
                    context: context,
                    title: state.alertTitle,
                    message: state.alertMsg,
                    imagePath: succesAnimation);
              }
              if (state.alertTitle == 'Warning') {
                CustomAlertDialog.show(
                    context: context,
                    title: state.alertTitle,
                    message: state.alertMsg,
                    imagePath: warningAnimation);
              }
              if (state.alertTitle == 'Failed') {
                CustomAlertDialog.show(
                    context: context,
                    title: state.alertTitle,
                    message: state.alertMsg,
                    imagePath: errorAnimation);
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
                    onSubmitted: () async {
                      context.read<TyrePuncherBloc>().add(
                          TyrePuncherEvent.searchDialogueDataFetch(
                              title: 'Document Numbers',
                              division: division_controller.text));
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
                  BlocListener<RegBloc, RegState>(
                    listener: (context, state) async {
                      if (state.searchDialogTitle == 'Vehicle Code' &&
                          state.isLoading == false) {
                        print(state.searchDialogTitle);
                        final data = await searchBox(context,
                            state.searchDialogTitle, state.searchDialogData);
                        vehiclecode_controller.text = data.var1;
                        vehiclename_controller.text = data.var2;
                      }
                      if (state.searchDialogTitle == 'Credit Code' &&
                          state.isLoading == false) {
                        final data = await searchBox(context,
                            state.searchDialogTitle, state.searchDialogData);
                        creditAccCode_controller.text = data.var1;
                        creditAccname_controller.text = data.var2;
                      }
                    },
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: CustomTextfield(
                              cntrollr: vehiclecode_controller,
                              label: "Vehicle code",
                              isMadatory: true,
                              suffixIcon: Icon(Icons.search),
                              onSubmitted: () {
                                context.read<RegBloc>().add(
                                    RegEvent.fetchVehicleCode(
                                        division_controller.text));
                              }),
                        ),
                        10.widthBox,
                        Flexible(
                          flex: 1,
                          child: CustomTextfield(
                            cntrollr: vehiclename_controller,
                            label: "",
                            isReadonly: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: CustomTextfield(
                            cntrollr: Tyreposition_controller,
                            label: "Tyre Position",
                            isMadatory: true,
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {
                              context.read<TyrePuncherBloc>().add(
                                  TyrePuncherEvent.searchDialogueDataFetch(
                                      assetId: 'A1', title: 'Tyre Position'));
                            }),
                      ),
                      10.widthBox,
                      Flexible(
                        flex: 1,
                        child: CustomTextfield(
                          cntrollr: Tyrepositiondes_controller,
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
                        child: CustomDateField(
                          controller: punctureDate_controller,
                          label: "Puncture Date",
                          isMadatory: true,
                        ),
                      ),
                      10.widthBox,
                      Flexible(
                        flex: 1,
                        child: CustomTextfield(
                          cntrollr: meterReading_controller,
                          label: "Meter Reading",
                          isMadatory: true,
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
                          cntrollr: Amount_controller,
                          label: "Amount",
                          isReadonly: false,
                          isMadatory: true,
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
                          },
                          isMadatory: true,
                        ),
                      ),
                      15.widthBox,
                      Flexible(
                        flex: 2,
                        child: CustomTextfield(
                          cntrollr: DriverName_controller,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  30.heightBox,
                  CustomTextfield(
                    cntrollr: remarks_controller,
                    label: "remarks",
                    Maxline: 3,
                    isMadatory: true,
                  ),
                  30.heightBox,
                  Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: CustomTextfield(
                          cntrollr: DocumentRef_controller,
                          label: "Document Ref",
                          isReadonly: false,
                        ),
                      ),
                    ],
                  ),
                  30.heightBox,
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: CustomTextfield(
                            cntrollr: debitAccCode_controller,
                            label: "Debit Account Code",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {
                              searchBox(context, 'code', []);
                            }),
                      ),
                      15.widthBox,
                      Flexible(
                        flex: 2,
                        child: CustomTextfield(
                          cntrollr: debitAccname_controller,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  30.heightBox,
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: CustomTextfield(
                            cntrollr: creditAccCode_controller,
                            label: "Credit Account Code",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {
                              searchBox(context, 'code', []);
                            }),
                      ),
                      15.widthBox,
                      Flexible(
                        flex: 2,
                        child: CustomTextfield(
                          cntrollr: creditAccname_controller,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      // BlocBuilder<>(
                      //   builder: (context, state) {
                      //     return Checkbox(
                      //         value: state.isVerified,
                      //         onChanged: (value) {
                      //
                      //         });
                      //   },
                      // ),
                      Text("Verified")
                    ],
                  ),
                  30.heightBox,
                ],
              ),
            ),
          ),
        ));
  }
}
