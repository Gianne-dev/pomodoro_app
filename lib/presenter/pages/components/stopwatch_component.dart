import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/presenter/pages/components/stopwatch_buttom_component.dart';

class StopwatchComponent extends StatelessWidget {
  const StopwatchComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(builder: (_) {
        return Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hora de trabalhar',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '02:00',
                style: const TextStyle(
                  fontSize: 110,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StopwatchButtomComponent(
                      text: 'Iniciar', icon: Icons.play_arrow, click: () {}),
                  StopwatchButtomComponent(
                    text: 'Parar',
                    icon: Icons.stop,
                    click: () {},
                  ),
                  StopwatchButtomComponent(
                    text: 'Reiniciar',
                    icon: Icons.refresh,
                    click: () {},
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
