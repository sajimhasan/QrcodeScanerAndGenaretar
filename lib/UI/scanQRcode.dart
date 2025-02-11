import 'package:flutter/material.dart';

class Scanqrcode extends StatelessWidget {
   Scanqrcode({super.key});
  final urlcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR code'),
      ),

    );
  }
}