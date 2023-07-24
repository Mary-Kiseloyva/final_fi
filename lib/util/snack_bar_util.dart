import 'package:flutter/material.dart';

extension SnackBarExtension on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        padding: const EdgeInsets.all(10),
        content: Text(message),
      ),
    );
  }
}