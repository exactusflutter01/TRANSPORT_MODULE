import 'package:flutter/material.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import '../CONSTANTS.dart';
import '../WIDGETS/TextfieldWidgets.dart';
import '../WIDGETS/TextfieldWithDate.dart';
import '../WIDGETS/search_box.dart';

class TyrePuncturePage extends StatelessWidget {
   TyrePuncturePage({super.key});

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
      ),
      body: SingleChildScrollView(
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
                  searchBox(context, 'DocNo', []);
                },
                isMadatory: true,
              ),
              30.heightBox,
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: CustomDateField(
                      controller: docDate_Controller,
                      label: "Doc Date",
                      isMadatory: true,
                    ),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
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
              30.heightBox,
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CustomTextfield(
                        cntrollr: vehiclecode_controller,
                        label: "Vehicle code",
                        isMadatory: true,
                        suffixIcon: Icon(Icons.search),
                        onSubmitted: () {
                          searchBox(context, 'vehicle code', []);
                        }),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: vehiclename_controller,
                      label: "",
                      isReadonly: true,
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
                        cntrollr: Tyreposition_controller,
                        label: "Tyre Position",
                        isMadatory: true,
                        suffixIcon: Icon(Icons.search),
                        onSubmitted: () {
                          searchBox(context, 'Positions', []);
                        }),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: Tyrepositiondes_controller,
                      label: "",
                    ),
                  ),
                ],
              ),

              30.heightBox,
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: CustomDateField(
                      controller: punctureDate_controller,
                      label: "Puncture Date",
                      isMadatory: true,
                    ),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: meterReading_controller,
                      label: "Meter Reading",
                      isMadatory: true,
                    ),
                  ),


                ],
              ),
              30.heightBox,
              Row(
                children: [

                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: Amount_controller,
                      label: "Amount",
                      isReadonly: false,
                      isMadatory: true,
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
    );
  }
}
