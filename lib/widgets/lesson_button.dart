import 'package:ar_smart_whiteboard/screens/web_view_screen.dart';
import 'package:flutter/material.dart';

class LessonButton extends StatelessWidget {
  final String url;
  final Color color;
  final String label;
  const LessonButton(
      {Key? key, required this.url, required this.color, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WebViewScreen(
                    url: url,
                  )),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          color,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}
