import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generateqrcode extends StatelessWidget {
   Generateqrcode({super.key});
  final urlcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR code'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlcontroller.text.isEmpty)
            QrImage(data:urlcontroller.text)
              
            ],
          ),
        ),
      ),
      
    );
  }
}