import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';

class CustomDateTimeField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final bool readOnly;
  final Function(String)? onDateSelected; // Callback to return selected date & time
  final bool isMandatory;

  const CustomDateTimeField({
    Key? key,
    required this.controller,
    required this.label,
    this.readOnly = false,
    this.onDateSelected,
    this.isMandatory = false,
  }) : super(key: key);

  @override
  State<CustomDateTimeField> createState() => _CustomDateTimeFieldState();
}

class _CustomDateTimeFieldState extends State<CustomDateTimeField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: true,
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
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
        labelText: widget.label,
        labelStyle: TextStyle(
          color: widget.isMandatory ? const Color.fromARGB(255, 170, 51, 51) : Colors.black,
          fontWeight: FontWeight.w700,
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month),
          onPressed: () => _selectDateTime(context),
        ),
        suffixIconColor: commonColor,
      ),
      onTap: () => _selectDateTime(context),
      readOnly: widget.readOnly,
    );
  }

  Future<void> _selectDateTime(BuildContext context) async {
    widget.controller.clear();

    DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      currentDate: DateTime.now(),
      helpText: "Select Date",
    );

    if (selectedDate != null) {
      TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (selectedTime != null) {
        DateTime finalDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          selectedTime.hour,
          selectedTime.minute,
        );

        String formattedDateTime =
            "${finalDateTime.year}-${finalDateTime.month.toString().padLeft(2, '0')}-${finalDateTime.day.toString().padLeft(2, '0')} "
            "${finalDateTime.hour.toString().padLeft(2, '0')}:${finalDateTime.minute.toString().padLeft(2, '0')}";

        setState(() {
          widget.controller.text = formattedDateTime;
        });

        if (widget.onDateSelected != null) {
          widget.onDateSelected!(formattedDateTime);
        }
      }
    }
  }
}
