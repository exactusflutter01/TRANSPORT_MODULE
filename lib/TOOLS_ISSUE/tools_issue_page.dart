import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonTable.dart';

class ToolsIssuePage extends StatelessWidget {
  ToolsIssuePage({super.key});
  TextEditingController doc_no_controller = TextEditingController();
  TextEditingController doc_date_controller = TextEditingController();
  TextEditingController department_code_controller = TextEditingController();
  TextEditingController department_name_controller = TextEditingController();
  TextEditingController vechicle_code_controller = TextEditingController();
  TextEditingController vechicle_name_controller = TextEditingController();
  TextEditingController driver_code_controller = TextEditingController();
  TextEditingController driver_name_controller = TextEditingController();
  TextEditingController issue_date_controller = TextEditingController();
  TextEditingController verified_by_controller = TextEditingController();
  TextEditingController remarks_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      appBar: AppBar(
      
        title: Text(
          "Tools Issue",
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
                      cntrollr: vechicle_code_controller,
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
                      cntrollr: vechicle_name_controller,
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
              CustomDateField(
                controller: issue_date_controller,
                label: "Issue Date",
              ),
              20.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: verified_by_controller,
                      label: "Verified By",
                      // keyboardType: TextInputType.numberWithOptions(),
                    ),
                  ),
                  10.widthBox,
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(
                    "Cancelled",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
            ],
          ),
        ),
      ),
    );
  }

  List tableHead = [
    "SNo.",
    "Part Code",
    "Description",
    "Quantity",
    "Remarks",
  ];

  List<List<dynamic>> tableData = [

  [1, "PC001", "Oil Filter", 1, "Replace yearly"],
  [2, "PC002", "Air Filter", 1, "Check regularly"],
];

}
