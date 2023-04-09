import 'package:ar_smart_whiteboard/screens/web_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String _scanBarcode = "";

  Future scanBarcodeNormal() async {
    String barcodeScanRes;

    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", true, ScanMode.QR);

    setState(() {
      _scanBarcode = barcodeScanRes;
      print("The output is" + _scanBarcode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            BuildContext context = this.context;
            await scanBarcodeNormal();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  WebViewScreen(url: _scanBarcode,)),
            );
          },
          child: const Text('Scan'),
        ),
      ),
    );
  }
}
