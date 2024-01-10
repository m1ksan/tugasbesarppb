import 'package:flutter/material.dart';
import 'package:mac/core.dart';

snackError(String message) {
  ScaffoldMessenger.of(Get.currentContext).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Text(message),
    ),
  );
}

snackSuccess(String message) {
  ScaffoldMessenger.of(Get.currentContext).showSnackBar(
    SnackBar(
      backgroundColor: Colors.green,
      content: Text(message),
    ),
  );
}
