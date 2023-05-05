import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  const MainButton({Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.orange,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        ),
        elevation: MaterialStateProperty.all<double>(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          label,
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
