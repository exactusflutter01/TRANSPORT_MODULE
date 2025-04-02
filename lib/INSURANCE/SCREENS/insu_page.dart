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
                  context.read<InsuBloc>().add(InsuEvent.insuranceInsert(
                      vehclecode.text,
                      "",
                      docdate.text,
                      InvoiceNo.text,
                      InvoiceDate.text,
                      "",
                      "",
                      divcode.text,
                      "",
                      "",
                      Startdate.text,
                      Expirydate.text,
                      PolicyType.text,
                      PolicyNo.text,
                      "",
                      Remarks.text,
                      "",
                      "",
                      "",
                      "",
                      smr,
                      emr,
                      "",
                      DebitAccCode,
                      docref.text,
                      "",
                      "",
                      "",
                      "",
                      "",
                      ""));
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
          // print("state.ItemsList Listener ${state.ItemsList}");
          if (state.ItemsList.isNotEmpty) {
            final data =
                await searchBox(context, "Insurance Company", state.ItemsList);
            InsuranceCompany.text = data.var1;
            InsuranceCompanydes.text = data.var2;
          }
          if (state.PolicyList.isNotEmpty) {
            final data =
                await searchBox(context, "Policy Type", state.PolicyList);
            PolicyType.text = data.var1;
            PolicyNo.text = data.var2;
          }
          if (state.DebitCode.isNotEmpty) {
            final data =
                await searchBox(context, "Debit Account Code", state.DebitCode);
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
                  CustomTextfield(
                    isReadonly: true,
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
                  20.heightBox,
                  CustomTextfield(
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
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: InsuranceCompanydes,
                    label: "",
                  ),
                  20.heightBox,
                  CustomTextfield(
                    isReadonly: true,
                    isMadatory: true,
                    cntrollr: PolicyType,
                    label: "Policy Type",
                    suffixIcon: Icon(Icons.search),
                    onSubmitted: () {
                      context.read<InsuBloc>().add(InsuEvent.fetchPolicy());
                    },
                  ),
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: PolicyTypedesc,
                    label: "",
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
                          controller: Startdate,
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
                  15.heightBox,
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
                  20.heightBox,
                  CustomTextfield(
                    isReadonly: true,
                    isMadatory: true,
                    cntrollr: driver,
                    label: "Driver",
                    suffixIcon: Icon(Icons.search),
                  ),
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: drivdesc,
                    label: "",
                  ),
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: PolicyType,
                    label: "Remarks",
                    Maxline: 3,
                  ),
                  20.heightBox,
                  CustomTextfield(
                    cntrollr: docref,
                    label: "Document Ref",
                  ),
                  20.heightBox,
                  CustomTextfield(
                    isReadonly: true,
                    cntrollr: DebitAccCode,
                    label: "Debit Account Code",
                    suffixIcon: Icon(Icons.search),
                    onSubmitted: () {
                      context.read<InsuBloc>().add(InsuEvent.fetchDebitCode());
                    },
                  ),
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: DebitAccCodedesc,
                    label: "",
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
