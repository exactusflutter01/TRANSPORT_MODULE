import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonTable.dart';

class CheckListPage extends StatelessWidget {
   CheckListPage({super.key});
    TextEditingController doc_no_controller = TextEditingController();
  TextEditingController doc_date_controller = TextEditingController();
 TextEditingController department_code_controller = TextEditingController();
  TextEditingController department_name_controller = TextEditingController();
  TextEditingController asset_code_controller = TextEditingController();
  TextEditingController asset_name_controller = TextEditingController();
  TextEditingController odometer_reading_controller = TextEditingController();
TextEditingController driver_code_controller = TextEditingController();
  TextEditingController driver_name_controller = TextEditingController();
  TextEditingController last_service_date_controller = TextEditingController();
  TextEditingController service_due_date_controller = TextEditingController();
  TextEditingController check_date_controller = TextEditingController();
  TextEditingController verified_by_controller = TextEditingController();
    TextEditingController remarks_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text(
          "Check List",
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
                        cntrollr: doc_no_controller,
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
                        isMadatory: true,
                        controller: doc_date_controller,
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
                      cntrollr: department_code_controller,
                      label: "Department",
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
                      cntrollr: department_name_controller,
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
                      cntrollr: asset_code_controller,
                      label: "Asset",
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
                      cntrollr: asset_name_controller,
                      label: "",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  )
                ],
              ),
                20.heightBox,

                 CustomTextfield(
                      cntrollr: odometer_reading_controller,
                      label: "Odometer Reading",
                      // keyboardType: TextInputType.numberWithOptions(),
                  isMadatory: true,
                    ),

                     20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: driver_code_controller,
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
                      cntrollr: driver_name_controller,
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
                      child: CustomDateField(
                  
                        controller: last_service_date_controller,
                        label: "Last Service Date",
                      ),
                    ),
                    10.widthBox,
                    Expanded(
                      child: CustomDateField(
                  
                        controller: service_due_date_controller,
                        label: "Service Due Date",
                      ),
                    )
                  ],
                ),
                 20.heightBox,
                   Row(
                  children: [
                      Expanded(
                      child: CustomDateField(
                  
                        controller: check_date_controller,
                        label: "Check Date",
                      ),
                    ),
                    10.widthBox,
                    Expanded(
                      child:  CustomTextfield(
                      cntrollr: verified_by_controller,
                      label: "Verified By",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                    )
                  ],
                ),
                 20.heightBox,
                 CustomTextfield(
                  Maxline: 3,
                      cntrollr: remarks_controller,
                      label: "Remarks",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
     20.heightBox,
                      customTable(tableHead,tableData)
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