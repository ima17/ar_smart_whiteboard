import 'package:flutter/material.dart';

class TeachersScreen extends StatelessWidget {
  TeachersScreen({Key? key}) : super(key: key);

  final List<String> imageNames = ['1.jpg', '2.jpg', '3.jpg', '4.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lessons'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: imageNames.map((name) {
          return Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/$name'),
          );
        }).toList(),
      ),
    );
  }
}
