import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'components/stopwatch_component.dart';
import 'components/time_input_component.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const StopwatchComponent(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeInputComponent(
                    valor: 2,
                    titulo: 'Trabalho',
                    inc: null,
                    dec: null,
                  ),
                  TimeInputComponent(
                    valor: 1,
                    titulo: 'Descanso',
                    inc: null,
                    dec: null,
                  ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
