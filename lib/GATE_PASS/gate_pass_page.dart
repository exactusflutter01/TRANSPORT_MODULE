


import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDateTime.dart';
import 'package:trans_module/WIDGETS/commonDropDown.dart';
import 'package:trans_module/WIDGETS/commonTable.dart';

class GatePassPage extends StatelessWidget {
   GatePassPage({super.key});
  final TextEditingController docNoController = TextEditingController();
  final TextEditingController jobNoController = TextEditingController();
  final TextEditingController principalCodeController = TextEditingController();
  final TextEditingController principalNameController = TextEditingController();
  final TextEditingController vehicleCodeController = TextEditingController();
  final TextEditingController driverCodeController = TextEditingController();
  final TextEditingController driverNameController = TextEditingController();
  final TextEditingController contTimeInController = TextEditingController();
  final TextEditingController containerNoController = TextEditingController();
  final TextEditingController vehicleNameController = TextEditingController();
  final TextEditingController vehicleNoController = TextEditingController();
  final TextEditingController transactionTypeController = TextEditingController();
  final TextEditingController loadStatusController = TextEditingController();
  final TextEditingController docDateController = TextEditingController();
  final TextEditingController transporterController = TextEditingController();
  final TextEditingController statusController = TextEditingController();
  final TextEditingController cbmController = TextEditingController();
  final TextEditingController remarksController = TextEditingController();
  final TextEditingController unstuffingStartTimeController = TextEditingController();
  final TextEditingController unstuffingEndTimeController = TextEditingController();
  final TextEditingController contDischargeTimeController = TextEditingController();
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController userDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text(
          "Gate Pass",
          style: appbarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
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
                      child: CustomTextfield(
                        cntrollr: jobNoController,
                        label: "Job No",
                        // keyboardType: TextInputType.numberWithOptions(),
                        suffixIcon: Icon(Icons.search),
                        onSubmitted: () {
                          // searchBox(context, 'DocNo', []);
                        },
                        isMadatory: true,
                      ),
                    ),
                  ],
                ),
                 20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: principalCodeController,
                      label: "Principal",
                      // keyboardType: TextInputType.numberWithOptions(),
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {
                        // searchBox(context, 'DocNo', []);
                      },
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: principalNameController,
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
                      cntrollr: vehicleCodeController,
                      label: "Vechicle Code",
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

                   Row(
                  children: [
                      Expanded(
                    child: CustomDateTimeField(
                      controller: contTimeInController,
                      label: 'Cont Time In',
                     
                    ),
                  ),
                    10.widthBox,
                    Expanded(
                    child: CustomTextfield(
                      cntrollr: containerNoController,
                      label: "Container No",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                  ],
                ),
                 20.heightBox,
                    Row(
                  children: [
                      Expanded(
                    child: CustomDateTimeField(
                      controller: unstuffingStartTimeController,
                      label: 'Unstuffing Start Time',
                  
                    ),
                  ),
                    10.widthBox,
                    Expanded(
                    child: CustomTextfield(
                      cntrollr: vehicleNoController,
                      label: "Vechicle No",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                  ],
                ),
                20.heightBox,
                    Row(
                  children: [
                      Expanded(
                    child: CustomDateTimeField(
                      controller: unstuffingEndTimeController,
                      label: 'Unstuffing End Time',
                    
                    ),
                  ),
                    10.widthBox,
                    Expanded(
                    child: CustomTextfield(
                      cntrollr: transactionTypeController,
                      label: "Transaction Type",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                  ],
                ),
                20.heightBox,
                    Row(
                  children: [
                      Expanded(
                    child: CustomDateTimeField(
                      controller: contDischargeTimeController,
                      label: 'Cont.Discharge Time',
                   
                    ),
                  ),
                    10.widthBox,
                    Expanded(
                    child: CustomTextfield(
                      cntrollr: loadStatusController,
                      label: "Load Status",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                  ],
                ),
                20.heightBox,
                    Row(
                  children: [
                       Expanded(
                    child: CustomDropdown(
                        hintText: 'Status',
                        ontap: (value) {
                          statusController.text = value;
                        },
                        controller: statusController,
                        dropDownList: ["Type 1", "Type 2"]),
                  ),
                    10.widthBox,
                    Expanded(
                      child: CustomDateField(
                    controller: docDateController,
                    label: 'Doc Date',
                    isMadatory: true,
                  )),
                  ],
                ),

                 20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                   
                      cntrollr: cbmController,
                      label: "CBM",
                  
                     
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr:transporterController,
                      label: "Transporter",
                    ),
                  ),
                ],
              ),
     20.heightBox,
              CustomTextfield(
                Maxline: 3,
                      cntrollr:remarksController,
                      label: "Remarks",
                    ),


                     20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                   
                      cntrollr: userIdController,
                      label: "User Id",
                  
                     
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                      child: CustomDateField(
                    controller: userDateController,
                    label: 'User Date',
              
                  )),
                ],
              ),
          ],),
        ),
      ),
    );
  }


  List<String> tableHead = [
  "SlNo.",
  "Check Code",
  "Description",
  "Check Status",
  "Remarks",
];
List<List<dynamic>> tableData = [
  [1, "CC001", "Initial Data Validation", "Passed", "All initial checks passed successfully."],
  [2, "CC002", "Format Compliance Check", "Failed", "Data format mismatch in field 'XYZ'."],
  [3, "CC003", "Range Verification", "Passed", "Values are within the expected range."],
  [4, "CC004", "Cross-Field Consistency", "Pending", "Awaiting secondary data for cross-validation."],
];

}