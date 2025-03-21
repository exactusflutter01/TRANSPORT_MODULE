import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/FUEL_FILLING/FUEL_BLOC/fuel_bloc.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_repository.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

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
  TextEditingController unit_price_Controller = TextEditingController();
  TextEditingController amount_Controller = TextEditingController();
  TextEditingController tank_qty_Controller = TextEditingController();
  TextEditingController vechicle_code_Controller = TextEditingController();
  TextEditingController driver_code_Controller = TextEditingController();
  TextEditingController meter_reading_Controller = TextEditingController();
  TextEditingController station_name_Controller = TextEditingController();
  TextEditingController location_Controller = TextEditingController();
  TextEditingController start_meter_Controller = TextEditingController();
  TextEditingController end_meter_Controller = TextEditingController();
  TextEditingController debit_account_code_Controller = TextEditingController();
  TextEditingController credit_account_code_Controller =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FuelBloc, FuelState>(
      listenWhen: (previous, current) {
       
        return previous.paymentMood != current.paymentMood;
      },
      listener: (context, state) async {
        if (state.paymentMood.isNotEmpty) {
          print("state.paymentMood ${state.paymentMood}");
          final data =
              await searchBox(context, 'Document Numbers', state.paymentMood);
        }
      },
      builder: (context, state) {
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
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: docNo_Controller,
                          label: "Doc NO",
                          isReadonly: true,
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () async {
                            // await  FuelFillingRepository().fetchPaymentMoods();
                          },
                          isMadatory: true,
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
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomDateField(
                          controller: date_filling_Controller,
                          label: "Date Of Filling",
                          isMadatory: true,
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: payment_mode_Controller,
                          label: "Payment Mode",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () async {
                            context
                                .read<FuelBloc>()
                                .add(FuelEvent.fetchPaymentMood());
                          },
                        ),
                      )
                    ],
                  ),
                  20.heightBox,
                  CustomTextfield(
                    cntrollr: fuel_card_no_Controller,
                    label: "Fuel Card No",
                    suffixIcon: Icon(Icons.search),
                    onSubmitted: () {},
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
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
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: fuel_type_Controller,
                          label: "Fuel Type",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {},
                          isMadatory: true,
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
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
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
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: bal_qty_Controller,
                          label: "Balance Qty",
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: unit_price_Controller,
                          label: "Unit price",
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
                          cntrollr: amount_Controller,
                          label: "Amount",
                          isMadatory: true,
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: tank_qty_Controller,
                          label: "Tank Qty",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: vechicle_code_Controller,
                          label: "Vechicle Code",
                          isMadatory: true,
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: vechicle_code_Controller,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: driver_code_Controller,
                          label: "Driver Code",
                          isMadatory: true,
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: driver_code_Controller,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  CustomTextfield(
                    cntrollr: meter_reading_Controller,
                    label: "Meter Reading",
                    isMadatory: true,
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: station_name_Controller,
                          label: "Station Name",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {},
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: location_Controller,
                          label: "Location",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: start_meter_Controller,
                          label: "Start Meter Reading",
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: end_meter_Controller,
                          label: "End Meter Reading",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: debit_account_code_Controller,
                          label: "Debit Account Code",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {},
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: debit_account_code_Controller,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: credit_account_code_Controller,
                          label: "Credit Account Code",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {},
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: CustomTextfield(
                          cntrollr: credit_account_code_Controller,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text("Verified")
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
