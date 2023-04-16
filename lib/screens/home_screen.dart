import 'package:ar_smart_whiteboard/screens/student_screen.dart';
import 'package:ar_smart_whiteboard/screens/teachers_screen.dart';
import 'package:ar_smart_whiteboard/widgets/main_button_widged.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButton(
              label: 'Student',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StudentScreen()),
                );
              },
            ),
            const SizedBox(height: 20),
            MainButton(
              label: 'Teacher',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeachersScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
