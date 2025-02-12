// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class Generateqrcode extends StatelessWidget {
//    Generateqrcode({super.key});
//   final urlcontroller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Generate QR code'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               if(urlcontroller.text.isEmpty)
//             QrImageView(data:urlcontroller.text),
//             SizedBox(height: 20,),
//             Container(
//               padding: EdgeInsets.only(left: 20,right: 20),
//               child: TextField(
//                controller: urlcontroller,
//                decoration: InputDecoration(
//                 hintText: 'Enter the Text',
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
//                 labelText: 'Enter the data'
//                ),

//               ),
//             ),
//             SizedBox(height: 20,),
//             ElevatedButton(onPressed: (){
              
//             }
//             , child: Text('Generate'))
            
              
//             ],
//           ),
//         ),
//       ),
      
//     );
//   }
// }