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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Battery Info",
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
                        cntrollr: suppcode_controller,
                        label: "Supp code",
                        isMadatory: true,
                        suffixIcon: Icon(Icons.search),
                        onSubmitted: () {
                          searchBox(context, 'supp code', []);
                        }),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: suppname_controller,
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
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: pono_controller,
                      label: "Po No",
                    ),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomDateField(
                      controller: division_controller,
                      label: "Po Date",
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
                        cntrollr: assetId_controller,
                        label: "Asset id",
                        isMadatory: true,
                        suffixIcon: Icon(Icons.search),
                        onSubmitted: () {
                          searchBox(context, 'Asset', []);
                        }),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: assetName_controller,
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
                        cntrollr: DriverId_controller,
                        label: "Driver",
                        suffixIcon: Icon(Icons.search),
                        onSubmitted: () {
                          searchBox(context, 'Driver', []);
                        }),
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
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CustomTextfield(
                      cntrollr: city_controller,
                      label: "City",
                    ),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: value_controller,
                      label: "Value",
                    ),
                  ),
                ],
              ),
              30.heightBox,
              CustomTextfield(
                cntrollr: batteryslno_controller,
                label: "Battery Serial No",
                // keyboardType: TextInputType.numberWithOptions(),
                isMadatory: true,
              ),
              30.heightBox,
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CustomTextfield(
                      cntrollr: make_controller,
                      label: "Make",
                    ),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: batterySize_controller,
                      label: "Battery Size",
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
                      cntrollr: voltage_controller,
                      label: "Voltage",
                    ),
                  ),
                  15.widthBox,
                  Flexible(
                    flex: 2,
                    child: CustomTextfield(
                      cntrollr: ampere_controller,
                      label: "Ampere",
                    ),
                  ),
                ],
              ),
              30.heightBox,
              CustomTextfield(
                cntrollr: remarks_controller,
                label: "remarks",
                Maxline: 3,
              ),
              30.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
