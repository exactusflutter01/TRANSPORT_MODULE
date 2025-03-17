import 'package:flutter/material.dart';
import 'package:trans_module/PRESENATION/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/PRESENATION/WIDGETS/TextfieldWidgets.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  TextEditingController vehclecode = TextEditingController();
  TextEditingController InsuranceCompany = TextEditingController();
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CustomTextfield(
              cntrollr: vehclecode,
              label: "Vehicle Code",
              keyboardType: TextInputType.numberWithOptions(),
            ),
            30.heightBox,
            CustomTextfield(
              cntrollr: InsuranceCompany,
              label: "Insurance Company",
            ),
            30.heightBox,
            CustomTextfield(
              cntrollr: PolicyType,
              label: "Policy Type",
            ),
            30.heightBox,
            CustomTextfield(
              cntrollr: PolicyNo,
              label: "Policy No",
            ),
            30.heightBox,
            CustomTextfield(
              cntrollr: Amount,
              label: "Amount",
            )
          ],
        ),
      ),
    );
  }
}
