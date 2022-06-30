import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../store/pomodoro_store.dart';

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
    final store = Provider.of<PomodoroStore>(context);
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
              isWorking: store.working(),
            ),
            Text(
              '$valor min',
              style: const TextStyle(fontSize: 18),
            ),
            _buildButtom(
              icon: Icons.arrow_upward,
              onPressed: inc,
              isWorking: store.working(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButtom({
    required IconData icon,
    VoidCallback? onPressed,
    required bool isWorking,
  }) =>
      ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(15),
          primary: isWorking ? Colors.red : Colors.green,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      );
}
