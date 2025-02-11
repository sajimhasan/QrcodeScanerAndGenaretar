import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:qrcode_scaner/UI/home_page.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:'QR code scener and Genetor',
      home:HomePage() ,
      debugShowCheckedModeBanner: false,
    );
  }
}