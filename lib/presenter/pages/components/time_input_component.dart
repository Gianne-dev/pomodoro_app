import 'package:flutter/material.dart';

class TimeInputComponent extends StatelessWidget {
  final int valor;
  final String titulo;
  final VoidCallback? inc;
  final VoidCallback? dec;
  const TimeInputComponent(
      {Key? key, required this.valor, required this.titulo, this.inc, this.dec})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildButtom(
              icon: Icons.arrow_downward,
              onPressed: dec,
            ),
            Text(
              '$valor min',
              style: const TextStyle(fontSize: 18),
            ),
            _buildButtom(
              icon: Icons.arrow_upward,
              onPressed: inc,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButtom({
    required IconData icon,
    VoidCallback? onPressed,
  }) =>
      ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(15),
          primary: Colors.red,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      );
}
