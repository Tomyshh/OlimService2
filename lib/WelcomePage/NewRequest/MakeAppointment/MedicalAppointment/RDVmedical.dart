import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RDVmedical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1D2860),
        title: Text('RDVmed'.tr),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontFamily: "Comfortaa",
          fontSize: 18,
        ),
      ),
    );
  }
}
