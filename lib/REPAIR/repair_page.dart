import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import 'package:trans_module/WIDGETS/commonTable.dart';

class RepairPage extends StatelessWidget {
  RepairPage({super.key});
  final docNoController = TextEditingController();
  final refNoController = TextEditingController();
  final docDateController = TextEditingController();
  final divisionController = TextEditingController();
  final serviceStationNameController = TextEditingController();
  final serviceStationCodeController = TextEditingController();
  final serviceTypeController = TextEditingController();
  final vehicleCodeController = TextEditingController();
  final vehicleNameController = TextEditingController();
  final driverCodeController = TextEditingController();
  final driverNameController = TextEditingController();
  final paymentModeController =
      TextEditingController(); // Although it might be a dropdown
  final currCodeController = TextEditingController();
  final exRateController = TextEditingController();
  final startMeterReadingController = TextEditingController();
  final endMeterReadingController = TextEditingController();
  final contactPersonController = TextEditingController();
  final addressController = TextEditingController();
  final remarksController = TextEditingController();
  final verifiedByController = TextEditingController();
  final verifiedOnController = TextEditingController();
  final cancelledByController = TextEditingController();
  final cancelledOnController = TextEditingController();
  final scheduleNoController = TextEditingController();
  final refDocController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Repair",
          style: appbarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: docNoController,
                      label: "Doc No",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
                      },
                      isMadatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomDateField(
                      controller: docDateController,
                      label: "Doc Date",
                    ),
                  )
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: refNoController,
                      label: "Ref No",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: divisionController,
                      label: "Div No",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
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
                      cntrollr: serviceStationCodeController,
                      label: "Service Station Name",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
                      },
                      isMadatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: serviceStationNameController,
                      label: "",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                ],
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: serviceTypeController,
                label: "Service Type",
                // keyboardType: TextInputType.numberWithOptions(),
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: vehicleCodeController,
                      label: "Vechicle",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
                      },
                      isMadatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: vehicleNameController,
                      label: "",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: driverCodeController,
                      label: "Driver",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
                      },
                      isMadatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: driverNameController,
                      label: "",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                ],
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: paymentModeController,
                label: "Payment Mode",
                // keyboardType: TextInputType.numberWithOptions(),
                suffixIcon: Icon(Icons.search),
                onSubmitted: () {
                  // searchBox(context, 'DocNo', []);
                },
                isMadatory: true,
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: currCodeController,
                      label: "Curr Code",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
                      },
                      isMadatory: true,
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: exRateController,
                      label: "Ex Rate",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                ],
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: startMeterReadingController,
                      label: "Start Meter Reading",
                      isMadatory: true,
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: endMeterReadingController,
                      label: "End Meter Reading",
                      isMadatory: true,
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  ),
                ],
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: contactPersonController,
                label: "Contact Person",
                // keyboardType: TextInputType.numberWithOptions(),
              ),
              20.heightBox,
              CustomTextfield(
                Maxline: 2,
                cntrollr: addressController,
                label: "Address",
                // keyboardType: TextInputType.numberWithOptions(),
              ),
              20.heightBox,
              CustomTextfield(
                Maxline: 2,
                cntrollr: remarksController,
                label: "Remarks",
                // keyboardType: TextInputType.numberWithOptions(),
              ),
              20.heightBox,
              CustomTextfield(
               
                cntrollr: refDocController,
                label: "Ref Doc",
                // keyboardType: TextInputType.numberWithOptions(),
              ),
              20.heightBox,
              Row(
                children: [
                  Container(
                    width: 200,
                    child: CustomTextfield(
                      cntrollr: verifiedByController,
                      label: "Verified By",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  ),
            
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    "Verified",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              20.heightBox,
              CustomDateField(
                controller: verifiedOnController,
                label: "Verified On",
              ),
              20.heightBox,
              Row(
                children: [
                   Container(
                    width: 200,
                    child: CustomDateField(
                      controller: cancelledByController,
                      label: "Cancelled By",
                    ),
                  ),
                
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    "cancelled",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              20.heightBox,
             CustomDateField(
                      controller: cancelledOnController,
                      label: "Cancelled On",
                    ),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonIconButton(
                      onSubmitted: () {
                        customTable(tableHeadParts, tableDataParts);
                      },
                      label: "Parts",
                      Icons: Icons.build),
                  10.widthBox,
                  CommonIconButton(
                      onSubmitted: () {},
                      label: "Service/Activity",
                      Icons: Icons.settings),
                ],
              ),

               customTable(tableHeadParts, tableDataParts)
            ],
          ),
        ),
      ),
    );
  }

  List tableHeadParts = [
     'Sr No',
  'Part Code',
  'Description',
  'Group Code',
  'Group',
  'Qty',
  'Rate',
  'Amount',
  ];

  List<List<dynamic>> tableDataParts = [
     ['1', 'P-123', 'Engine Oil Filter', 'FLT', 'Lubricants', '2', '15.00', '30.00'],
  ['2', 'B-456', 'Brake Pads (Front)', 'BRK', 'Braking System', '1', '45.50', '45.50'],
  ['3', 'T-789', 'Tyre (205/55 R16)', 'TYR', 'Wheels & Tyres', '4', '85.00', '340.00'],
  ['4', 'S-012', 'Spark Plug', 'PLG', 'Ignition System', '4', '5.75', '23.00'],
  ];
  List tableHeadService = [
     'Sr No',
  'Activity Code',
  'Description',
  'Qty',
  'Rate',
  'Amount',
  ];

  List<List<dynamic>> tableDataService= [
      ['1', 'LBR-001', 'General Vehicle Checkup', '1', '25.00', '25.00'],
  ['2', 'OIL-CHG', 'Engine Oil and Filter Change', '1', '40.00', '40.00'],
  ['3', 'WHL-BAL', 'Wheel Balancing (4 Wheels)', '1', '30.00', '30.00'],
  ['4', 'BRK-INSP', 'Brake System Inspection', '1', '15.00', '15.00'],
  ];
}
