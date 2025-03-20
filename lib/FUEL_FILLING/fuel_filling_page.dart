import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';

class FuelFillingPage extends StatelessWidget {
  FuelFillingPage({super.key});
  TextEditingController docNo_Controller = TextEditingController();
  TextEditingController div_Controller = TextEditingController();
  TextEditingController date_filling_Controller = TextEditingController();
  TextEditingController payment_mode_Controller = TextEditingController();
  TextEditingController fuel_card_no_Controller = TextEditingController();
  TextEditingController invoice_id_Controller = TextEditingController();
  TextEditingController invoice_no_Controller = TextEditingController();
  TextEditingController fuel_type_Controller = TextEditingController();
  TextEditingController uom_Controller = TextEditingController();
  TextEditingController qty_Controller = TextEditingController();
  TextEditingController bal_qty_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fuel Filling",
          style: appbarTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              30.heightBox,
              Row(
                children: [
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: docNo_Controller,
                      label: "Doc NO",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {},
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: div_Controller,
                      label: "Division",
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
                    child:   CustomDateField(
                controller: date_filling_Controller,
                label: "Date Of Filling",
              ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: payment_mode_Controller,
                      label: "Payment Mode",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {},
                    ),
                  ),
                ],
              ),
              30.heightBox,
               CustomTextfield(
                 cntrollr: fuel_card_no_Controller,
                 label: "Fuel Card No",
                 suffixIcon: Icon(Icons.search),
                 onSubmitted: () {},
               ),
              
              30.heightBox,
               Row(
                children: [
                  Expanded(
                    child:         CustomTextfield(
                      cntrollr: invoice_no_Controller,
                      label: "Invoice No",
                                       
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: invoice_id_Controller,
                      label: "Invoice Id",
                   
                    ),
                  ),
                ],
              ),
              30.heightBox,
               Row(
                children: [
                  Expanded(
                    child:   CustomTextfield(
                      cntrollr: fuel_type_Controller,
                      label: "Fuel Type",
                      suffixIcon: Icon(Icons.search),
                      onSubmitted: () {},
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: fuel_type_Controller,
                      label: "",
                   
                    ),
                  ),
                ],
              ),
              30.heightBox,
               Row(
                children: [
                  Expanded(
                    child:   CustomTextfield(
                      cntrollr: uom_Controller,
                      label: "UOM",
                    
                    ),
                  ),
                  10.widthBox,
                  Expanded(
                    child: CustomTextfield(
                      cntrollr: qty_Controller,
                      label: "Qty",
                   isMadatory: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
