import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar(
        'Warning',
        'Loba teuing cape',
        backgroundColor: Colors.amber,
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar(
        'Warning',
        'Geus teu bisa di kurangan',
        backgroundColor: Colors.red,
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value--;
    }
  }

  void resetBilangan() {
    bilangan.value = 0;
    Get.snackbar(
      'Info',
      'Bilangan Di Reset',
      backgroundColor: Colors.green,
    );
  }
}
