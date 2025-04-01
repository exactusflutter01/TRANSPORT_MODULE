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

class FinePage extends StatefulWidget {
  @override
  State<FinePage> createState() => _FinePageState();
}

class _FinePageState extends State<FinePage> {
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
  String? selectedItem;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegBloc, RegState>(
      listenWhen: (previous, current) {
        return previous.divisionCode != current.divisionCode ||
            previous.DocNo != current.DocNo;
      },
      listener: (context, state) async {
        if (state.divisionCode.isNotEmpty) {
          print("reg divcode ${state.divisionCode}");
          final data = await searchBox(context, 'Division', state.divisionCode);
          division_controller.text = data.var1;

          context.read<RegBloc>().add(FetchDocNO(data.var1));
        }
        if (state.DocNo.isNotEmpty) {
          print("reg docNo ${state.DocNo}");
          final docNoData =
              await searchBox(context, 'Document Number', state.DocNo);
          docNo_Controller.text = docNoData.var1;
        }
        ;
      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                'Fine',
                style: appbarTextStyle,
              ),
              actions: [
                CommonButton(
                  onSubmitted: () {},
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
                      onSubmitted: () {
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
                            onSubmitted: () {},
                          ),
                        ),
                        15.widthBox,
                        Flexible(
                          flex: 1,
                          child: CustomTextfield(
                            isMadatory: true,
                            cntrollr: vehicleCode_controller,
                            label: "",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {},
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
                        // CustomDropdown(
                        //   width: 180,
                        //   items: ['type1', 'type2'],
                        //   hint: 'Classification',
                        //   selectedValue: selectedItem,
                        //   onChanged: (value) {
                        //     setState(() {
                        //       selectedItem = value;
                        //     });
                        //   },
                        // ),
                      ],
                    ),
                    30.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextfield(
                            isMadatory: true,
                            label: "Fine Type",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {},
                            cntrollr: amt_controller,
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: CustomTextfield(
                            isMadatory: true,
                            label: "",
                            cntrollr: amt_controller,
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
                          child: CustomTextfield(
                            label: "Other amount",
                            cntrollr: amt_controller,
                          ),
                        ),
                      ],
                    ),
                    30.heightBox,
                    CustomTextfield(
                      isMadatory: true,
                      cntrollr: docNo_Controller,
                      label: "Location",
                    ),
                    30.heightBox,
                    CustomDateField(
                      isMadatory: true,
                      controller: docDate_Controller,
                      label: "Accident Date",
                    ),
                    30.heightBox,
                    CustomTextfield(
                      Maxline: 3,
                      isMadatory: true,
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
                            cntrollr: docNo_Controller,
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
