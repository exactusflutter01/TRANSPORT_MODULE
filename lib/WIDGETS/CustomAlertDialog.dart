import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomAlertDialog {
  static void show({
    required BuildContext context,
    required String title,
    required String message,
    required String imagePath,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 10,
          backgroundColor: Colors.white,
          child: _buildDialogContent(context, title, message, imagePath),
        );
      },
    );
  }

  static Widget _buildDialogContent(
    BuildContext context,
    String title,
    String message,
    String imagePath,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Lottie.asset(
              imagePath,
              width: 180,
              height: 180,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            message,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 25),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Image.asset(
                'assets/icons/close.png',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
