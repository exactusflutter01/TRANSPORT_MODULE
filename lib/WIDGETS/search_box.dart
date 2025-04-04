import 'package:flutter/material.dart';
import 'package:trans_module/WIDGETS/SizedBoxExtension.dart';
import 'package:trans_module/WIDGETS/TextfieldWidgets.dart';

searchBox(context, title, dataList) async {
  var data;
  await showDialog(
      context: context,
      builder: (context) {
        return CommonDialogBox(
          onsubmitted: (value) {
            data = value;
          },
          title: title,
          dataList: dataList,
        );
      });
  return data ?? '';
}

class CommonDialogBox extends StatefulWidget {
  final Function(dynamic) onsubmitted;
  final String title;
  final List dataList;
  const CommonDialogBox({
    super.key,
    required this.onsubmitted,
    required this.title,
    required this.dataList,
  });

  @override
  State<CommonDialogBox> createState() => _CommonDialogBoxState();
}

class _CommonDialogBoxState extends State<CommonDialogBox> {
  TextEditingController _serachController = TextEditingController();
  List FilterList = [];
  @override
  void initState() {
    // TODO: implement initState
    FilterList = widget.dataList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              color: const Color.fromARGB(255, 5, 116, 9),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {
                          widget.onsubmitted('');
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.cancel,
                          color: Colors.grey,
                          size: 35,
                        )),
                  ),
                  Center(
                      child: Text(
                    widget.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                  20.heightBox,
                ],
              )),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _serachController,
              decoration: InputDecoration(
                hintText: "Search....",
              ),
              onChanged: (value) {
                setState(() {
                  FilterList = widget.dataList.where((item) {
                    return item.var1
                            .toString()
                            .toLowerCase()
                            .contains(value.toLowerCase()) ||
                        item.var2
                            .toString()
                            .toLowerCase()
                            .contains(value.toLowerCase()) ||
                        item.var3
                            .toString()
                            .toLowerCase()
                            .contains(value.toLowerCase());
                  }).toList();
                });
              },
            ),
          ),
          10.heightBox,
          FilterList.isEmpty
              ? Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 80),
                  child: Text(
                    "No Data found",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              : Flexible(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: FilterList.length,
                      itemBuilder: (context, index) {
                        final dataList = FilterList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                              onTap: () {
                                widget.onsubmitted(dataList);
                                Navigator.pop(context);
                              },
                              child: Card(
                                  color:
                                      const Color.fromARGB(255, 224, 223, 223),
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        children: [
                                           _buildRow(dataList.var1, dataList.var2),
                                           _buildRow(dataList.var3, dataList.var4),
                                           _buildRow(dataList.var5, dataList.var6),
                                          
                                         
                                        ],
                                      ),
                                    ),
                                  ))),
                        );
                      }),
                ),
          20.heightBox
        ],
      ),
    );
  }

  _buildRow(value1, value2) {
    return
    value1=='' && value2==''? SizedBox() :
     Padding(
       padding: const EdgeInsets.all(10),
       child: Row(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
               width: 150,
               child: Text(
                 value1,
                 style: TextStyle(fontWeight: FontWeight.bold),
               )),
           20.widthBox,
           Container(
               width: 150,
               child: Text(
                 value2,
                 style: TextStyle(fontWeight: FontWeight.bold),
               )),
         ],
       ),
     );
  }
}
