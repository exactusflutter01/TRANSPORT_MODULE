import 'package:flutter/material.dart';
import 'package:trans_module/CONSTANTS.dart';

class CommonButton extends StatelessWidget {
  final Function()? onSubmitted;
  final String label;
  final String imagePath;
  const CommonButton(
      {super.key,
      required this.onSubmitted,
      required this.label,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Tooltip(
            message: label,
            child: GestureDetector(
              onTap: onSubmitted,
              child: Image.asset(
                imagePath,
                width: 32,
                height: 32,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image_not_supported,
                      size: 30, color: Colors.red);
                },
              ),
            ))
        // ElevatedButton(
        //   onPressed: onSubmitted,
        //   // label: const Text(
        //   //   "S a v e",
        //   //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   // ),
        //   label: label,
        //   icon: const Icon(
        //     Icons.save_alt_sharp,
        //     color: Colors.white,
        //   ),
        //   style: ButtonStyle(
        //     backgroundColor: WidgetStatePropertyAll(commonColor),
        //   ),
        // ),
        );
  }
}
