import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';

class SaveButton extends StatelessWidget {
  final Function()? onSubmitted;

  const SaveButton({super.key, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton.icon(
        onPressed: onSubmitted,
        label: const Text(
          "S a v e",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        icon: const Icon(
          Icons.save_alt_sharp,
          color: Colors.white,
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(commonColor),
        ),
      ),
    );
  }
}
