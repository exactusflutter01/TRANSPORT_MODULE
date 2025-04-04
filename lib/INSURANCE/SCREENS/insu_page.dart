import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/CONSTANTS.dart';
import 'package:trans_module/INSURANCE/INSU_BLOC/insu_bloc.dart';
import 'package:trans_module/INSURANCE/test.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/commonButton.dart';
import 'package:trans_module/WIDGETS/search_box.dart';
import 'package:intl/intl.dart';

class Insurance_page extends StatelessWidget {
  Insurance_page({
    super.key,
  });

  @override
  TextEditingController vehclecode = TextEditingController();
  TextEditingController vehclecodedesc = TextEditingController();
  TextEditingController InsuranceCompany = TextEditingController();
  TextEditingController InsuranceCompanydes = TextEditingController();
  TextEditingController PolicyType = TextEditingController();
  TextEditingController PolicyTypedesc = TextEditingController();
  TextEditingController PolicyNo = TextEditingController();
  TextEditingController Amount = TextEditingController();
  TextEditingController docdate = TextEditingController();
  TextEditingController Startdate = TextEditingController();
  TextEditingController Expirydate = TextEditingController();
  TextEditingController InvoiceDate = TextEditingController();
  TextEditingController DebitAccCode = TextEditingController();
  TextEditingController DebitAccCodedesc = TextEditingController();
  TextEditingController smr = TextEditingController();
  TextEditingController emr = TextEditingController();
  TextEditingController InvoiceNo = TextEditingController();
  TextEditingController driver = TextEditingController();
  TextEditingController drivdesc = TextEditingController();
  TextEditingController Remarks = TextEditingController();
  TextEditingController divcode = TextEditingController();
  TextEditingController docref = TextEditingController();

  Widget build(BuildContext context) {
    DateTime TimeNow = DateTime.now();
    docdate.text = DateFormat('dd-MM-yyyy').format(TimeNow);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Insurance",
          style: appbarTextStyle,
        ),
        actions: [
          BlocBuilder<InsuBloc, InsuranceState>(
            builder: (context, state) {
              return CommonButton(
                onSubmitted: () {
                  print("${state.verified}  befoere insrtng");
                  context.read<InsuBloc>().add(InsuEvent.insuranceInsert({
                        "COMPANY_CODE": "BSG",
                        "VEHICLE_CODE": '000',
                        "DOC_NO": 00003,
                        "DOC_DATE": docdate.text,
                        "INVOICE_NO": InvoiceNo.text,
                        "INVOICE_DATE": InvoiceDate.text,
                        "SUP_CODE": "",
                        "COST_BOOK_NO": "",
                        "DIV_CODE": divcode.text,
                        "DEPT_CODE": "",
                        "INSURANCE_COMPANY": "",
                        "START_DATE": Startdate.text,
                        "EXP_DATE": Expirydate.text,
                        "POLICY_TYPE": PolicyType.text,
                        "POLICY_NO": PolicyNo.text,
                        "AMOUNT": "",
                        "REMARKS": Remarks.text,
                        "CURR_CODE": "",
                        "EX_RATE": "",
                        "ACTIVE": "Y",
                        "USER_ID": "",
                        "START_METER_READING": smr.text,
                        "END_METER_READING": emr.text,
                        "EMP_ID": "",
                        "AC_CODE_DR": DebitAccCode.text,
                        "DOC_REF": docref.text,
                        "EXPTYPE_CODE": "",
                        "EXPSUBTYPE_CODE": "",
                        "EXP_CODE": "",
                        "VERIFIED": state.verified,
                        "VERIFIED_DATE": "",
                        "VERIFIED_BY": ""
                      }));

                  print("${state.Response} state response");
                },
                label: 'Save',
                imagePath: 'assets/icons/save.png',
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<InsuBloc, InsuranceState>(
        listenWhen: (previous, current) {
          return previous.ItemsList != current.ItemsList;
        },
        listener: (context, state) async {
          if (state.isLoading == false &&
              state.ItemsList.isNotEmpty &&
              state.SearchDialogueName == "Insurance Company") {
            final data =
                await searchBox(context, "Insurance Company", state.ItemsList);
            InsuranceCompany.text = data.var1;
            InsuranceCompanydes.text = data.var2;
          }
          if (state.isLoading == false &&
              state.ItemsList.isNotEmpty &&
              state.SearchDialogueName == "Policy Type") {
            final data = await searchBox(
                context, state.SearchDialogueName, state.ItemsList);
            PolicyType.text = data.var1;
            PolicyNo.text = data.var2;
          }
          if (state.isLoading == false &&
              state.ItemsList.isNotEmpty &&
              state.SearchDialogueName == "Debit Code") {
            final data = await searchBox(
                context, state.SearchDialogueName, state.ItemsList);
            DebitAccCode.text = data.var1;
            DebitAccCodedesc.text = data.var2;
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextfield(
                    isReadonly: true,
                    cntrollr: vehclecode,
                    label: "Doc No",
                    suffixIcon: Icon(Icons.search),
                    isMadatory: true,
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomDateField(
                          controller: docdate,
                          label: "Doc date",
                          isMadatory: true,
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          isReadonly: true,
                          cntrollr: divcode,
                          label: "Div code",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextfield(
                          isReadonly: true,
                          cntrollr: vehclecode,
                          label: "Vehicle Code",
                          keyboardType: TextInputType.numberWithOptions(),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          cntrollr: vehclecodedesc,
                          label: "",
                          keyboardType: TextInputType.numberWithOptions(),
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextfield(
                          isReadonly: true,
                          isMadatory: true,
                          cntrollr: InsuranceCompany,
                          label: "Insurance Company",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () async {
                            print("state.ItemsList ${state.ItemsList}");
                            context.read<InsuBloc>().add(InsuEvent.fetchdoc());
                          },
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          cntrollr: InsuranceCompanydes,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextfield(
                          isReadonly: true,
                          isMadatory: true,
                          cntrollr: PolicyType,
                          label: "Policy Type",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            context
                                .read<InsuBloc>()
                                .add(InsuEvent.fetchPolicy());
                          },
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          cntrollr: PolicyTypedesc,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  CustomTextfield(
                    cntrollr: PolicyNo,
                    label: "Policy No",
                  ),
                  20.heightBox,
                  CustomTextfield(
                    isMadatory: true,
                    cntrollr: Amount,
                    label: "Amount",
                  ),
                  30.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomDateField(
                          controller: Startdate,
                          label: "Start Date",
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomDateField(
                          controller: Expirydate,
                          label: "Expiry date",
                        ),
                      ),
                    ],
                  ),
                  15.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextfield(
                          isMadatory: true,
                          cntrollr: smr,
                          label: "Start Meter Reading",
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          isMadatory: true,
                          cntrollr: emr,
                          label: "End Meter Reading",
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextfield(
                          cntrollr: InvoiceNo,
                          label: "Invoice No",
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomDateField(
                          controller: InvoiceDate,
                          label: "Invoice date",
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextfield(
                          isReadonly: true,
                          isMadatory: true,
                          cntrollr: driver,
                          label: "Driver",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          cntrollr: drivdesc,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: PolicyType,
                    label: "Remarks",
                    Maxline: 3,
                  ),
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: docref,
                    label: "Document Ref",
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomTextfield(
                          isReadonly: true,
                          cntrollr: DebitAccCode,
                          label: "Debit Account Code",
                          suffixIcon: Icon(Icons.search),
                          onSubmitted: () {
                            context
                                .read<InsuBloc>()
                                .add(InsuEvent.fetchDebitCode());
                          },
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          cntrollr: DebitAccCodedesc,
                          label: "",
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Checkbox(
                        value: state.verified,
                        onChanged: (value) {
                          context.read<InsuBloc>().add(Verifiedclicked(value!));

                          print(" ${state.verified} state.verified");
                          print("$value  value of checkbox");
                        },
                      ),
                      Text(
                        "Verified",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
