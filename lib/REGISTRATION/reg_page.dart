import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

class RegistrationPage extends StatelessWidget {
  TextEditingController docNo_Controller = TextEditingController();
  TextEditingController docDate_Controller = TextEditingController();
  TextEditingController division_controller = TextEditingController();
  TextEditingController vehicleCode_controller = TextEditingController();
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration',
          style: appbarTextStyle,
        ),
        actions: [SaveButton(onSubmitted: () {})],
      ),
      body: BlocConsumer<RegBloc, RegState>(listener: (context, state) {
      
      }, builder: (context, state) {
        if (state is Loading) {
          return Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomTextfield(
                  cntrollr: docNo_Controller,
                  label: "Doc NO",
                  // keyboardType: TextInputType.numberWithOptions(),
                  suffixIcon: Icon(Icons.search), onSubmitted: () {},
                ),
                30.heightBox,
                CustomDateField(
                  controller: docDate_Controller,
                  label: "Doc Date",
                ),
                30.heightBox,
                Row(
                  children: [
                    // Flexible(
                    //   flex: 1,
                    //   child: CustomTextfield(
                    //     cntrollr: division_controller,
                    //     label: "Division",
                    //     suffixIcon: Icon(Icons.search),
                    //     onSubmitted: () {},
                    //   ),
                    // ),
                    Flexible(
                      flex: 1,
                      child: CustomTextfield(
                        cntrollr: division_controller,
                        label: "Division",
                        suffixIcon: Icon(Icons.search),
                        onSubmitted: () async {
                          final regState = context.read<RegBloc>().state;

                          if (regState is Loaded) {
                            final selectedDiv = await searchBox(
                              context,
                              "Select Division",
                              regState.divCodes,
                            );

                            if (selectedDiv != null &&
                                selectedDiv is DivisionModel) {
                              division_controller.text =
                                  selectedDiv.divisionName;
                            }
                          }
                        },
                      ),
                    ),

                    15.widthBox,
                    Flexible(
                      flex: 2,
                      child: CustomTextfield(
                        cntrollr: vehicleCode_controller,
                        label: "Vehicle Code",
                      ),
                    ),
                  ],
                ),
                30.heightBox,
                Row(
                  children: [
                    Expanded(
                      child: CustomDateField(
                        controller: regStartDate_controller,
                        label: "Reg Start Date",
                      ),
                    ),
                    15.widthBox,
                    Expanded(
                      child: CustomDateField(
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
                        cntrollr: startMeterReading_controller,
                        label: "Start Meter Reading",
                      ),
                    ),
                    15.widthBox,
                    Expanded(
                      child: CustomTextfield(
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
                        cntrollr: driver_controller,
                        label: "Driver",
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
                  cntrollr: docNo_Controller,
                  label: "Remarks",
                  keyboardType: TextInputType.numberWithOptions(),
                  // onSubmitted: (p0) {},
                ),
                30.heightBox,
                CustomTextfield(
                  cntrollr: docDate_Controller,
                  label: "Document Ref",
                ),
                30.heightBox,
                Row(
                  children: [
                    Expanded(
                      child: CustomTextfield(
                        cntrollr: docNo_Controller,
                        label: "Debit Account Code",
                        keyboardType: TextInputType.numberWithOptions(),
                        // onSubmitted: (p0) {},
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
                        cntrollr: docNo_Controller,
                        label: "Credit Account Code",
                        keyboardType: TextInputType.numberWithOptions(),
                        // onSubmitted: (p0) {},
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
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
