import 'package:ar_smart_whiteboard/screens/web_view_screen.dart';
import 'package:flutter/material.dart';

class TeachersScreen extends StatelessWidget {
  TeachersScreen({Key? key}) : super(key: key);

  final Map<String, String> imageUrls = {
    '1.jpg': 'https://webxr.run/pVb8l40Q2YeQx',
    '2.jpg': 'https://webxr.run/XV6EWZgwGGvQr',
    '3.jpg': 'https://webxr.run/rl9zpbY35avOb',
    '4.jpg': 'https://webxr.run/v6YQnMRQa6EZy',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: imageUrls.entries.map((entry) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebViewScreen(url: entry.value),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset('assets/images/${entry.key}'),
            ),
          );
        }).toList(),
      ),
    );
  }
}
