import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController cntrollr;
  final String label;
  final TextInputType keyboardType;
  final Function()? onSubmitted;
  final ValueChanged<String>? onChanged;
  final Widget? suffixIcon;
  final int? Maxline;
  final bool isMadatory;
  final bool isReadonly;

  CustomTextfield({
    Key? key,
    required this.cntrollr,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
    this.suffixIcon,
    this.Maxline,
    this.isMadatory = false,
    this.isReadonly = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  String? _errorText; // Error message holder

  void _validateField() {
    setState(() {
      if (widget.isMadatory && widget.cntrollr.text.isEmpty) {
        _errorText = "This field is required!";
      } else {
        _errorText = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: widget.isReadonly,
      maxLines: widget.Maxline ?? 1,
      controller: widget.cntrollr,
      keyboardType: widget.keyboardType,
      onTap: widget.onSubmitted,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
//  prefixIcon: widget.isMadatory == true
//     ? Icon(
//         Icons.star,
//         color: Colors.red,
//         size: 10,
//       )
//     : null,
        suffixIcon: widget.suffixIcon,
        labelText: widget.label,
        suffixIconColor: Color.fromARGB(255, 29, 77, 37),
        
        labelStyle: TextStyle(
            color: widget.isMadatory == true
                ? const Color.fromARGB(255, 170, 51, 51)
                : Colors.black,
            fontWeight: FontWeight.w600),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
                color: Colors.black, width: 2, style: BorderStyle.solid)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.green,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.black45,
            width: 2,
          ),
        ),
      ),
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
