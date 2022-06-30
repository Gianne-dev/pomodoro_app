import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/pomodoro_store.dart';
import 'components/stopwatch_component.dart';
import 'components/time_input_component.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
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
                    valor: store.timeWork,
                    titulo: 'Trabalho',
                    inc: store.started && store.working()
                        ? null
                        : store.incrementTimeWork,
                    dec: store.started && store.working()
                        ? null
                        : store.decrementTimeWork,
                  ),
                  TimeInputComponent(
                    valor: store.timeRest,
                    titulo: 'Descanso',
                    inc: store.started && store.resting()
                        ? null
                        : store.incrementTimeRest,
                    dec: store.started && store.resting()
                        ? null
                        : store.decrementTimeRest,
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
