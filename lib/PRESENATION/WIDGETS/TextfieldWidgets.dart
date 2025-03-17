import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController cntrollr;
  final String label;
  final TextInputType keyboardType;
  final Function(String)? onSubmitted;

  const CustomTextfield({
    Key? key,
    required this.cntrollr,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.cntrollr,
      keyboardType: widget.keyboardType,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        labelText: widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
