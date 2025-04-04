import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/FUEL_FILLING/FUEL_BLOC/fuel_bloc.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_repository.dart';
import 'package:trans_module/REGISTRATION/REG_BLOC/reg_bloc.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

class FuelFillingPage extends StatefulWidget {
  FuelFillingPage({super.key});

  @override
  State<FuelFillingPage> createState() => _FuelFillingPageState();
}

class _FuelFillingPageState extends State<FuelFillingPage> {
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
  void initState() {
    // TODO: implement initState
    div_Controller.text = "10";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FuelBloc, FuelState>(
      listener: (context, state) async {
        if (state.searchDialogData.isNotEmpty && state.isLoading == false) {
          final data = await searchBox(
              context, state.searchDialogTitle, state.searchDialogData);
          if (state.searchDialogTitle == 'Payment Mood') {
            payment_mode_Controller.text = data.var1;
          }
          if (state.searchDialogTitle == 'Stations') {
            station_name_Controller.text = data.var1;
          }
          if (state.searchDialogTitle == 'Fuel Types') {
            fuel_type_Controller.text = data.var1;
          }
          if (state.searchDialogTitle == 'Fuel Card') {
            fuel_card_no_Controller.text = data.var1;
          }
          if (state.searchDialogTitle == 'Document Number') {
            docNo_Controller.text = data.var1;
          }
        }

        if (state.msg == "Success" && state.isLoading == false) {
          print("INLISTENER ${state.msg}");
        }
        if ((state.maxDocNo.isNotEmpty || state.maxDocNo != '') &&
            state.isLoading == false) {
          print("INLISTENER  maxDocNo ${state.maxDocNo}");
          docNo_Controller.text = state.maxDocNo;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Fuel Filling",
              style: appbarTextStyle,
            ),
            actions: [
              CommonButton(
                  onSubmitted: () async {
                    if (docNo_Controller.text.isEmpty) {
                      context.read<FuelBloc>().add(FuelEvent.incrementDocNo());
                      await Future.delayed(Duration(milliseconds: 500));
                    }

                    context.read<FuelBloc>().add(FuelEvent.insertFuelFilling({
                          "COMPANY_CODE": cmpCode,
                          "VEHICLE_CODE": vechicle_code_Controller.text,
                          "DOC_DATE": await systemDateFetch(),
                          "DOC_NO": docNo_Controller.text,
                          "METER_READING": meter_reading_Controller.text,
                          "EMP_ID": ' ',
                          "FUEL_TYPE": fuel_type_Controller.text,
                          "QTY_GALLON": qty_Controller.text,
                          "UNIT_PRICE": unit_price_Controller.text,
                          "AMOUNT": amount_Controller.text,
                          "STATION_NAME": station_name_Controller.text,
                          "LOCATION": location_Controller.text,
                          "PAYMENT_MODE": payment_mode_Controller.text,
                          "FUEL_CARD_NO": fuel_card_no_Controller.text,
                          "USER_ID": userId,
                          "UOM": uom_Controller.text,
                          "BILL_NUMBER": invoice_no_Controller.text,
                          "BILL_ID": invoice_id_Controller.text,
                          "DATE_FILLING": date_filling_Controller.text,
                          "START_METER_READING": start_meter_Controller.text,
                          "END_METER_READING": end_meter_Controller.text,
                          "AC_CODE_DR": "",
                          "AC_CODE_CR": "",
                          "EXPTYPE_CODE": "",
                          "EXPSUBTYPE_CODE": "",
                          "EXP_CODE": "",
                          "VERIFIED_DATE": await systemDateFetch(),
                          "VERIFIED_BY": userId,
                          "VERIFIED": state.isVerified==true ? "Y":"N",
                          "BALANCE_QTY": bal_qty_Controller.text,
                          "TANK_QTY": tank_qty_Controller.text,
                          "COST_BOOK_NO": "",
                          "DIV_CODE": div_Controller.text,
                          "DEPT_CODE": ""
                        }));
                  },
                  label: "Save",
                  imagePath: 'assets/icons/save.png')
            ],
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
                          isReadonly: false,
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () async {
                            context
                                .read<FuelBloc>()
                                .add(FuelEvent.fetchDocNo(div_Controller.text));
                          },
                          isMadatory: true,
                        ),
                      ),
                      10.widthBox,
                      BlocListener<RegBloc, RegState>(
                        listener: (context, state) async {
                          if (state.divisionCode.isNotEmpty &&
                              div_Controller.text.isEmpty) {
                            final data = await searchBox(
                                context, 'Division Codes', state.divisionCode);
                            div_Controller.text = data.var1;
                          }
                        },
                        child: Expanded(
                          child: CustomTextfield(
                            cntrollr: div_Controller,
                            label: "Division",
                            suffixIcon: Icon(Icons.search),
                            onSubmitted: () {
                              context
                                  .read<RegBloc>()
                                  .add(RegEvent.fetchdivcodes());
                            },
                          ),
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
                          isReadonly: true,
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
                    onSubmitted: () async {
                      context.read<FuelBloc>().add(FuelEvent.fetchFuelCard());
                    },
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
                          onSubmitted: () async {
                            context
                                .read<FuelBloc>()
                                .add(FuelEvent.fetchFuelType());
                          },
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
                          onSubmitted: () async {
                            context
                                .read<FuelBloc>()
                                .add(FuelEvent.fetchStations());
                          },
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
                      BlocBuilder<FuelBloc, FuelState>(
                        builder: (context, state) {
                          return Checkbox(
                              value: state.isVerified,
                              onChanged: (value) {
                                if (value != null) {
                                  context
                                      .read<FuelBloc>()
                                      .add(FuelEvent.isVerified(value));
                                }
                              });
                        },
                      ),
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
