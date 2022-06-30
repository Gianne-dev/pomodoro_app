import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro_store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum BreakType { work, rest }

abstract class _PomodoroStore with Store {
  @observable
  bool _started = false;
  bool get started => _started;

  @observable
  int _minutes = 2;
  int get minutes => _minutes;

  @observable
  int _seconds = 0;
  int get seconds => _seconds;

  @observable
  int _timeWork = 2;
  int get timeWork => _timeWork;

  @observable
  int _timeRest = 1;
  int get timeRest => _timeRest;

  @observable
  BreakType breakType = BreakType.work;

  Timer? stopwatch;

  @action
  void start() {
    _started = true;
    stopwatch = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (minutes == 0 && seconds == 0) {
          _changeBreakType();
        } else if (seconds == 0) {
          _seconds = 59;
          _minutes--;
        } else {
          _seconds--;
        }
      },
    );
  }

  @action
  void stop() {
    _started = false;
    stopwatch?.cancel();
  }

  @action
  void restart() {
    _started = false;
    stop();
    _minutes = working() ? timeWork : timeRest;
    _seconds = 0;
  }

  @action
  void incrementTimeWork() {
    _timeWork++;
    if (working()) {
      restart();
    }
  }

  @action
  void decrementTimeWork() {
    _timeWork--;
    if (working()) {
      restart();
    }
  }

  @action
  void incrementTimeRest() {
    _timeRest++;
    if (resting()) {
      restart();
    }
  }

  @action
  void decrementTimeRest() {
    _timeRest--;
    if (resting()) {
      restart();
    }
  }

  bool working() {
    return breakType == BreakType.work;
  }

  bool resting() {
    return breakType == BreakType.rest;
  }

  void _changeBreakType() {
    if (working()) {
      breakType = BreakType.rest;
      _minutes = timeRest;
    } else {
      breakType = BreakType.work;
      _minutes = timeWork;
    }
    _seconds = 0;
  }
}
