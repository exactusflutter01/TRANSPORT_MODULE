// import 'package:flutter/material.dart';
// import 'package:trans_module/CONSTANTS.dart';

// class CustomDropdown extends StatefulWidget {
//   final List<String> items;
//   final String hint;
//   final String? selectedValue;
//   final ValueChanged<String?> onChanged;
//   final double height;
//   final double width;

//   final double borderRadius;

//   const CustomDropdown({
//     Key? key,
//     required this.items,
//     required this.hint,
//     this.selectedValue,
//     required this.onChanged,
//     this.height = 40,
//     this.width = 200,
//     this.borderRadius = 8,
//   }) : super(key: key);

//   @override
//   State<CustomDropdown> createState() => _CustomDropdownState();
// }

// class _CustomDropdownState extends State<CustomDropdown> {
//   String? selectedItem;

//   @override
//   void initState() {
//     super.initState();
//     selectedItem = widget.selectedValue;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: widget.height,
//       width: widget.width,
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(widget.borderRadius),
//         border: Border.all(width: 2, color: Colors.black45),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 1,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton<String>(
//           value: selectedItem,
//           hint: Text(
//             widget.hint,
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           isExpanded: true,
//           onChanged: (newValue) {
//             setState(() {
//               selectedItem = newValue;
//             });
//             widget.onChanged(newValue);
//           },
//           dropdownColor: commonColor,
//           style: TextStyle(color: Colors.black),
//           items: widget.items.map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(
//                 value,
//                 style:
//                     TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final TextEditingController controller;
  final List dropDownList;
  final double width;

  final Function ontap;
  final String hintText;

  const CustomDropdown(
     
      {super.key,
      required this.hintText,
      this.width=200,
      required this.ontap,
      required this.controller,
      required this.dropDownList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          label: Text(hintText,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                  )),
          suffixIcon: PopupMenuButton(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 30,
              ),
              itemBuilder: (context) {
                return [
                  for (var item in dropDownList)
                    PopupMenuItem(
                        onTap: () {
                          ontap(item);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            item,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                ];
              }),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
