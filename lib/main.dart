import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void main() {
  runApp(QRApp());
}

class QRApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QRHomePage(),
    );
  }
}

class QRHomePage extends StatefulWidget {
  @override
  _QRHomePageState createState() => _QRHomePageState();
}

class _QRHomePageState extends State<QRHomePage> {
  String qrText = "";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Code Scanner & Generator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Enter text to generate QR Code",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  qrText = _controller.text;
                });
              },
              child: Text("Generate QR Code"),
            ),
            SizedBox(height: 20),
            if (qrText.isNotEmpty)
              QrImageView(
                data: qrText,
                size: 200,
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QRScanner()),
                );
              },
              child: Text("Scan QR Code"),
            ),
          ],
        ),
      ),
    );
  }
}

class QRScanner extends StatefulWidget {
  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String scannedData = "Scan a QR Code";

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR Code Scanner")),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: (QRViewController controller) {
                this.controller = controller;
                controller.scannedDataStream.listen((scanData) {
                  setState(() {
                    scannedData = scanData.code ?? "";
                  });
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text("Scanned Data: $scannedData"),
            ),
          ),
        ],
      ),
    );
  }
}
