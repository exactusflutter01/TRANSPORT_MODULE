import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import 'package:trans_module/WIDGETS/commonDropDown.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController docNo_Controller = TextEditingController();
  TextEditingController docDate_Controller = TextEditingController();
  TextEditingController division_controller = TextEditingController();
  TextEditingController vehicleCode_controller = TextEditingController();
  TextEditingController vehicleName_controller = TextEditingController();
  TextEditingController regStartDate_controller = TextEditingController();
  TextEditingController regExpDate_controller = TextEditingController();
  TextEditingController startMeterReading_controller = TextEditingController();
  TextEditingController endMeterReading_controller = TextEditingController();
  TextEditingController amt_controller = TextEditingController();
  TextEditingController otherRegExpDate_controller = TextEditingController();
  TextEditingController driver_controller = TextEditingController();
  final TextEditingController remarks_controller = TextEditingController();
  final TextEditingController documentRef_controller = TextEditingController();
  final TextEditingController debitAcc_controller = TextEditingController();
  final TextEditingController creditAcc_controller = TextEditingController();
  final TextEditingController regType_Controller = TextEditingController();
  String? selectedItem;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegBloc, RegState>(
      listener: (context, state) async {
        if (state.searchDialogData.isNotEmpty && state.isLoading == false) {
          final data = await searchBox(
              context, state.searchDialogTitle, state.searchDialogData);
          if (state.searchDialogTitle == 'Division Code') {
            division_controller.text = data.var1;
          }
          if (state.searchDialogTitle == 'Doc No') {
            docNo_Controller.text = data.var1;
          }
          if (state.searchDialogTitle == 'Vehicle Code') {
            vehicleCode_controller.text = data.var1;
            vehicleName_controller.text = data.var2;
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                'Registration',
                style: appbarTextStyle,
              ),
              actions: [
                CommonButton(
                  onSubmitted: () {
                    context.read<RegBloc>().add(RegEvent.saveData());
                  },
                  label: 'Save',
                  imagePath: 'assets/icons/save.png',
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CustomTextfield(
                      isReadonly: true,
                      isMadatory: true,
                      cntrollr: docNo_Controller,
                      label: "Doc NO",
                      keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () async {
                        context
                            .read<RegBloc>()
                            .add(RegEvent.fetchDocNO(division_controller.text));
                      },
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: CustomDateField(
                            isMadatory: true,
                            controller: docDate_Controller,
                            label: "Doc Date",
                          ),
                        ),
                        15.widthBox,
                        Flexible(
                          flex: 1,
                          child: CustomTextfield(
                            cntrollr: division_controller,
                            label: "Division",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () async {
                              context
                                  .read<RegBloc>()
                                  .add(RegEvent.fetchdivcodes());
                            },
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
                            isMadatory: true,
                            cntrollr: vehicleCode_controller,
                            label: "Vehicle Code",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {
                              context
                                  .read<RegBloc>()
                                  .add(RegEvent.fetchVehicleCode(division_controller.text));
                            },
                          ),
                        ),
                        15.widthBox,
                        Flexible(
                          flex: 1,
                          child: CustomTextfield(
                            isMadatory: true,
                            cntrollr: vehicleName_controller,
                            label: "",
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: CustomDateField(
                            isMadatory: true,
                            controller: regStartDate_controller,
                            label: "Reg Start Date",
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: CustomDateField(
                            isMadatory: true,
                            controller: regExpDate_controller,
                            label: "Reg Exp Date",
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextfield(
                            isMadatory: true,
                            cntrollr: startMeterReading_controller,
                            label: "Start Meter Reading",
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: CustomTextfield(
                            isMadatory: true,
                            cntrollr: endMeterReading_controller,
                            label: "End Meter Reading",
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextfield(
                            isMadatory: true,
                            cntrollr: amt_controller,
                            label: "Amount",
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: CustomDateField(
                            controller: otherRegExpDate_controller,
                            label: "Other Reg Exp Date",
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextfield(
                            isMadatory: true,
                            cntrollr: driver_controller,
                            label: "Driver",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {},
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: CustomTextfield(
                            cntrollr: otherRegExpDate_controller,
                            label: "",
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    CustomTextfield(
                      Maxline: 3,
                      isMadatory: true,
                      cntrollr: remarks_controller,
                      label: "Remarks",
                      keyboardType: TextInputType.numberWithOptions(),
                      // onSubmitted: (p0) {},
                    ),
                    30.heightBox,
                    CustomTextfield(
                      cntrollr: documentRef_controller,
                      label: "Document Ref",
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextfield(
                            cntrollr: debitAcc_controller,
                            label: "Debit Account Code",
                            keyboardType: TextInputType.numberWithOptions(),
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {},
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: CustomTextfield(
                            cntrollr: docDate_Controller,
                            label: "",
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextfield(
                            cntrollr: creditAcc_controller,
                            label: "Credit Account Code",
                            keyboardType: TextInputType.numberWithOptions(),
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {},
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: CustomTextfield(
                            cntrollr: docDate_Controller,
                            label: "",
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          "Verified",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        45.widthBox,
                        Expanded(
                            child: CustomDropdown(
                                hintText: 'Reg Type',
                                ontap: () {},
                                controller: regType_Controller,
                                dropDownList: ["Type 1", "Type 2"]))
                      ],
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
