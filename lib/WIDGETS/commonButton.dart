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
            )));
  }
}

class CommonIconButton extends StatelessWidget {
  final Function()? onSubmitted;
  final String label;
  final IconData Icons;

  const CommonIconButton({
    super.key,
    required this.onSubmitted,
    required this.label,
    required this.Icons,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onSubmitted,
        child: Column(
          children: [
            Icon(
              Icons,
              size: 35,
            ),
            Text(
              "$label",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
