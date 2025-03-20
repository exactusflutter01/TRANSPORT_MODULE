import 'package:flutter/material.dart';

class CustomDateField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final bool readOnly;
  final Function(String)? onDateSelected; // Callback to return selected date
final bool isMadatory;
  const CustomDateField({
    Key? key,
    required this.controller,
    required this.label,
    this.readOnly = false,
    this.onDateSelected,
       this.isMadatory=false,
  }) : super(key: key);

  @override
  State<CustomDateField> createState() => _CustomDateFieldState();
}

class _CustomDateFieldState extends State<CustomDateField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: true,
      controller: widget.controller,
      decoration: InputDecoration(
    //      prefixIcon: widget.isMadatory == true 
    // ? Icon(
    //     Icons.star,
    //     color: Colors.red,
    //     size: 10,
    //   ) 
    // : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          labelText: widget.label,
          labelStyle:
              TextStyle(color:widget.isMadatory == true ?Colors.red: Colors.black, fontWeight: FontWeight.w700),
          suffixIcon: IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: () => _selectDate(context),
          ),
          // enabledBorder: UnderlineInputBorder(),
          suffixIconColor: Colors.green),
      onTap: () => _selectDate(context),
      readOnly: widget.readOnly,
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    widget.controller.clear();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      currentDate: DateTime.now(),
      helpText: "Select Date",
    );

    if (selectedDate != null) {
      String formattedDate = selectedDate.toIso8601String().substring(0, 10);
      setState(() {
        widget.controller.text = formattedDate;
      });

      if (widget.onDateSelected != null) {
        widget.onDateSelected!(formattedDate);
      }
    }
  }
}
