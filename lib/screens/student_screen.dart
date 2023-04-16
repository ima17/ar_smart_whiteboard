import 'package:ar_smart_whiteboard/screens/web_view_screen.dart';
import 'package:ar_smart_whiteboard/widgets/lesson_button.dart';
import 'package:ar_smart_whiteboard/widgets/main_button_widged.dart';
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButton(
                onPressed: () async {
                  await scanBarcodeNormal();
                  if (_scanBarcode != "-1") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebViewScreen(
                                url: _scanBarcode,
                              )),
                    );
                  }
                },
                label: "Scan"),
            const SizedBox(height: 20.0),
            const Text(
              'OR',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  LessonButton(
                    color: Colors.green,
                    label: 'Lesson 01',
                    url: "https://webxr.run/pVb8l40Q2YeQx",
                  ),
                  SizedBox(width: 5.0),
                  LessonButton(
                    color: Colors.red,
                    label: 'Lesson 02',
                    url: "https://webxr.run/XV6EWZgwGGvQr",
                  ),
                  SizedBox(width: 5.0),
                  LessonButton(
                    color: Colors.purple,
                    label: 'Lesson 03',
                    url: "https://webxr.run/rl9zpbY35avOb",
                  ),
                  SizedBox(width: 5.0),
                  LessonButton(
                    color: Colors.orange,
                    label: 'Lesson 04',
                    url: "https://webxr.run/v6YQnMRQa6EZy",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
