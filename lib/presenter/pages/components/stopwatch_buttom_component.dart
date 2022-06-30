import 'package:flutter/material.dart';

class StopwatchButtomComponent extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? click;
  const StopwatchButtomComponent(
      {Key? key, required this.text, required this.icon, this.click})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black87,
          textStyle: const TextStyle(
            fontSize: 18,
          ),
        ),
        onPressed: click,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(
                icon,
              ),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
