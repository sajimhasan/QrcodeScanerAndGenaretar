// import 'package:flutter/material.dart';
// import 'package:qrcode_scaner/UI/GenerateQRCode.dart';
// import 'package:qrcode_scaner/UI/scanQRcode.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('QR code scner'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (_)=>Scanqrcode()));

//             }
//             , child: Text('Scan QR code')),
//             SizedBox(height: 40,),
//             ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (_)=>Generateqrcode()));

//             } 
//             , child: Text('Generate QR code'))
//           ],
          
//         ),
//       ),

//     );
//   }
// }