import 'package:flutter/material.dart';
import 'package:trans_module/PRESENATION/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/PRESENATION/WIDGETS/TextfieldWidgets.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  TextEditingController vehclecode = TextEditingController();
  TextEditingController vehclecodedesc = TextEditingController();
  TextEditingController InsuranceCompany = TextEditingController();
  TextEditingController InsuranceCompanydes = TextEditingController();
  TextEditingController PolicyType = TextEditingController();
  TextEditingController PolicyNo = TextEditingController();
  TextEditingController Amount = TextEditingController();
  // TextEditingController PolicyType = TextEditingController();
  // TextEditingController PolicyType = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insurance"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextfield(
                cntrollr: vehclecode,
                label: "Vehicle Code",
                keyboardType: TextInputType.numberWithOptions(),
                suffixIcon: Icon(Icons.search),
              ),
              10.heightBox,
              CustomTextfield(
                cntrollr: vehclecodedesc,
                label: "",
                keyboardType: TextInputType.numberWithOptions(),
              ),
              30.heightBox,
              CustomTextfield(
                cntrollr: InsuranceCompany,
                label: "Insurance Company",
                suffixIcon: Icon(Icons.search),
              ),
              10.heightBox,
              CustomTextfield(
                cntrollr: InsuranceCompanydes,
                label: "",
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: PolicyType,
                label: "Policy Type",
                suffixIcon: Icon(Icons.search),
              ),
              10.heightBox,
              CustomTextfield(
                cntrollr: PolicyType,
                label: "",
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: PolicyNo,
                label: "Policy No",
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: Amount,
                label: "Amount",
              ),
              30.heightBox,
              Row(
                children: [
                  Flexible(
                    child: CustomTextfield(
                      cntrollr: Amount,
                      label: "StartDate",
                    ),
                  ),
                  5.widthBox,
                  Flexible(9
                    child: CustomTextfield(
                      cntrollr: Amount,
                      label: "ExpiryDate",
                    ),
                  ),
                ],
              ),
              15.heightBox,
              Row(
                children: [
                  Flexible(
                    child: CustomTextfield(
                      cntrollr: Amount,
                      label: "Start Meter Reading",
                    ),
                  ),
                  5.widthBox,
                  Flexible(
                    child: CustomTextfield(
                      cntrollr: Amount,
                      label: "End Meter Reading",
                    ),
                  ),
                ],
              ),
              15.heightBox,
              Row(
                children: [
                  Flexible(
                    child: CustomTextfield(
                      cntrollr: Amount,
                      label: "Invoice No",
                    ),
                  ),
                  5.widthBox,
                  Flexible(
                    child: CustomTextfield(
                      cntrollr: Amount,
                      label: "Invoice date",
                    ),
                  ),
                ],
              ),
              20.heightBox,
              CustomTextfield(
                cntrollr: PolicyType,
                label: "Driver",
                suffixIcon: Icon(Icons.search),
              
              ),
              10.heightBox,
              CustomTextfield(
                cntrollr: PolicyType,
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
