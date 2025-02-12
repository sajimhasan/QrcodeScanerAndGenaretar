// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class Scanqrcode extends StatelessWidget {
//    Scanqrcode({super.key});
//   String QRresult="Scannd data will appear here ";
//   Future<void> ScanQr()async{
//     try{
//       final QrCode = await FlutterBarcodeScanner.scanbarcode('#ff6666','Cencal',true,ScanModel.)

//     }on PlatformException{
//       QRresult='fail to read scan';
//     }
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scan QR code'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 30,),
//             Text("$QRresult",style: TextStyle(color: Colors.deepPurpleAccent),),

//             SizedBox(height: 40,),
//             ElevatedButton(onPressed: (){

//             }, child: Text('Scan'))

//           ],
//         ),
//       ),

//     );
//   }
// }