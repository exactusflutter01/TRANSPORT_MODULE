import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trans_module/INSURANCE/INSU_BLOC/insu_bloc.dart';
import 'package:trans_module/INSURANCE/test.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';
import 'package:trans_module/WIDGETS/TextfieldWithDate.dart';
import 'package:trans_module/WIDGETS/search_box.dart';

class Insurance_page extends StatefulWidget {
  Insurance_page({super.key});

  @override
  State<Insurance_page> createState() => _HomepageState();
}

class _HomepageState extends State<Insurance_page> {
  @override
  TextEditingController vehclecode = TextEditingController();

  TextEditingController vehclecodedesc = TextEditingController();

  TextEditingController InsuranceCompany = TextEditingController();

  TextEditingController InsuranceCompanydes = TextEditingController();

  TextEditingController PolicyType = TextEditingController();

  TextEditingController PolicyNo = TextEditingController();

  TextEditingController Amount = TextEditingController();

  TextEditingController docdate = TextEditingController();
  TextEditingController Startdate = TextEditingController();
  TextEditingController Expirydate = TextEditingController();
  TextEditingController InvoiceDate = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Insurance"),
      ),
      body: BlocConsumer<InsuBloc, InsuranceState>(
        listener: (context, state) {
          if (state.isError) {
            // Show error message when there is an error
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Error occurred while fetching data!")),
            );
          }
          if (!state.isLoading && state.ItemsList.isNotEmpty) {
            // Show a success message after fetching items
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Data fetched successfully!")),
            );
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomTextfield(
                    cntrollr: vehclecode,
                    label: "Doc No",
                    suffixIcon: Icon(Icons.search),
                  ),
                  20.heightBox,
                  Row(
                    children: [
                      Flexible(
                        child: CustomDateField(
                          controller: docdate,
                          label: "Doc date",
                        ),
                      ),
                      5.widthBox,
                      Flexible(
                        child: CustomTextfield(
                          cntrollr: Amount,
                          label: "Div code",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
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
                  20.heightBox,
                  CustomTextfield(
                    cntrollr: InsuranceCompany,
                    label: "Insurance Company",
                    suffixIcon: Icon(Icons.search),
                    onSubmitted: () async {
                      context.read<InsuBloc>().add(FetchDoc());
                      await searchBox(
                          context, "Insurance Company", state.ItemsList);

                      // ItemSelector(
                      //   labelText: 'item',
                      //   itemList: state.ItemsList,
                      //   // onItemSelected: (selectedItem) {
                      //   //   print('Selected: $selectedItem');
                      //   // },
                      // );
                    },
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
                        child: CustomDateField(
                          controller: InvoiceDate,
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
                  10.heightBox,
                  CustomTextfield(
                    cntrollr: PolicyType,
                    label: "Remarks",
                    Maxline: 3,
                  ),
                  20.heightBox,
                  CustomTextfield(
                    cntrollr: PolicyType,
                    label: "Document Ref",
                  ),
                  20.heightBox,
                  CustomTextfield(
                    cntrollr: PolicyType,
                    label: "Debit Account Code",
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
          );
        },
      ),
    );
  }
}
