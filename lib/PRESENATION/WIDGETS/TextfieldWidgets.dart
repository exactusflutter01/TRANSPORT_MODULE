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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
