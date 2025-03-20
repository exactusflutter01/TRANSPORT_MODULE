import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController cntrollr;
  final String label;
  final TextInputType keyboardType;
  final Function()? onSubmitted;
  final Widget? suffixIcon;
  final int? Maxline;

  CustomTextfield({
    Key? key,
    required this.cntrollr,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
    this.suffixIcon,
    this.Maxline,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: widget.Maxline ?? 1,
      controller: widget.cntrollr,
      keyboardType: widget.keyboardType,
      onTap: widget.onSubmitted,
      decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          labelText: widget.label,
          labelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Colors.green, width: 2, style: BorderStyle.solid)),
          // enabledBorder: UnderlineInputBorder(),
          // hoverColor: Colors.green,
          suffixIconColor: Colors.green),
    );
  }
}

// import 'package:flutter/material.dart';

// class CustomTextfield extends StatefulWidget {
//   final TextEditingController cntrollr;
//   final String label;
//   final TextInputType keyboardType;
//   final Function()? onSubmitted;
//   final Widget? suffixIcon;
//   final int? maxLines;

//   const CustomTextfield({
//     Key? key,
//     required this.cntrollr,
//     required this.label,
//     this.keyboardType = TextInputType.text,
//     this.onSubmitted,
//     this.suffixIcon,
//     this.maxLines = 1,
//   }) : super(key: key);

//   @override
//   State<CustomTextfield> createState() => _CustomTextFieldState();
// }

// class _CustomTextFieldState extends State<CustomTextfield> {
//   bool isFocused = false;

//   @override
//   Widget build(BuildContext context) {
//     return Focus(
//       onFocusChange: (hasFocus) {
//         setState(() {
//           isFocused = hasFocus;
//         });
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
//         decoration: BoxDecoration(
//           color: Colors.black87,
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: isFocused ? Colors.greenAccent : Colors.white24,
//             width: isFocused ? 2 : 1,
//           ),
//           boxShadow: isFocused
//               ? [
//                   BoxShadow(
//                     color: Colors.greenAccent.withOpacity(0.3),
//                     blurRadius: 10,
//                     spreadRadius: 1,
//                     offset: const Offset(0, 4),
//                   ),
//                 ]
//               : [],
//         ),
//         child: TextField(
//           controller: widget.cntrollr,
//           keyboardType: widget.keyboardType,
//           maxLines: widget.maxLines,
//           onTap: widget.onSubmitted,
//           style: const TextStyle(color: Colors.white, fontSize: 16),
//           cursorColor: Colors.greenAccent,
//           decoration: InputDecoration(
//             suffixIcon: widget.suffixIcon,
//             labelText: widget.label,
//             labelStyle: TextStyle(
//               color: isFocused ? Colors.greenAccent : Colors.white70,
//               fontSize: 14,
//             ),
//             focusedBorder: InputBorder.none,
//             enabledBorder: InputBorder.none,
//             border: InputBorder.none,
//           ),
//         ),
//       ),
//     );
//   }
// }
