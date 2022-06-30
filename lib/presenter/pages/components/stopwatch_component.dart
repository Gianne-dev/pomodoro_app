import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/presenter/pages/components/stopwatch_buttom_component.dart';
import 'package:provider/provider.dart';

import '../../store/pomodoro_store.dart';

class StopwatchComponent extends StatelessWidget {
  const StopwatchComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Expanded(
      child: Observer(builder: (_) {
        var minutes = store.minutes.toString().padLeft(2, '0');
        var seconds = store.seconds.toString().padLeft(2, '0');
        return Container(
          color: store.working() ? Colors.red : Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.working() ? 'Hora de trabalhar' : 'Hora de Descansar',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '$minutes:$seconds',
                style: const TextStyle(
                  fontSize: 110,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: !store.started,
                    child: StopwatchButtomComponent(
                      text: 'Iniciar',
                      icon: Icons.play_arrow,
                      click: store.start,
                    ),
                  ),
                  Visibility(
                    visible: store.started,
                    child: StopwatchButtomComponent(
                      text: 'Parar',
                      icon: Icons.stop,
                      click: store.stop,
                    ),
                  ),
                  StopwatchButtomComponent(
                    text: 'Reiniciar',
                    icon: Icons.refresh,
                    click: store.restart,
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
