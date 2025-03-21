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
  return data??'';
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
                  20.heightBox,
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
            child: CustomTextfield(
              cntrollr: _serachController,
              label: "Search...",
              onChanged: (value) {},
            ),
          ),
          10.heightBox,
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: widget.dataList.length,
                  itemBuilder: (context, index) {
                    final dataList = widget.dataList[index];
                    return GestureDetector(
                        onTap: () {
                          widget.onsubmitted(dataList);
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 50, child: Card(child: Column())));
                  }),
            ),
          ),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel,
                    color: Colors.grey,
                    size: 35,
                  )),
            ),
          )
        ],
      ),
    );
  }
}


