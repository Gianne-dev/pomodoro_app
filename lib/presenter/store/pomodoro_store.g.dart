// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$_startedAtom =
      Atom(name: '_PomodoroStore._started', context: context);

  @override
  bool get _started {
    _$_startedAtom.reportRead();
    return super._started;
  }

  @override
  set _started(bool value) {
    _$_startedAtom.reportWrite(value, super._started, () {
      super._started = value;
    });
  }

  late final _$_minutesAtom =
      Atom(name: '_PomodoroStore._minutes', context: context);

  @override
  int get _minutes {
    _$_minutesAtom.reportRead();
    return super._minutes;
  }

  @override
  set _minutes(int value) {
    _$_minutesAtom.reportWrite(value, super._minutes, () {
      super._minutes = value;
    });
  }

  late final _$_secondsAtom =
      Atom(name: '_PomodoroStore._seconds', context: context);

  @override
  int get _seconds {
    _$_secondsAtom.reportRead();
    return super._seconds;
  }

  @override
  set _seconds(int value) {
    _$_secondsAtom.reportWrite(value, super._seconds, () {
      super._seconds = value;
    });
  }

  late final _$_timeWorkAtom =
      Atom(name: '_PomodoroStore._timeWork', context: context);

  @override
  int get _timeWork {
    _$_timeWorkAtom.reportRead();
    return super._timeWork;
  }

  @override
  set _timeWork(int value) {
    _$_timeWorkAtom.reportWrite(value, super._timeWork, () {
      super._timeWork = value;
    });
  }

  late final _$_timeRestAtom =
      Atom(name: '_PomodoroStore._timeRest', context: context);

  @override
  int get _timeRest {
    _$_timeRestAtom.reportRead();
    return super._timeRest;
  }

  @override
  set _timeRest(int value) {
    _$_timeRestAtom.reportWrite(value, super._timeRest, () {
      super._timeRest = value;
    });
  }

  late final _$breakTypeAtom =
      Atom(name: '_PomodoroStore.breakType', context: context);

  @override
  BreakType get breakType {
    _$breakTypeAtom.reportRead();
    return super.breakType;
  }

  @override
  set breakType(BreakType value) {
    _$breakTypeAtom.reportWrite(value, super.breakType, () {
      super.breakType = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void start() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.start');
    try {
      return super.start();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.stop');
    try {
      return super.stop();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.restart');
    try {
      return super.restart();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeWork');
    try {
      return super.incrementTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeWork() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeWork');
    try {
      return super.decrementTimeWork();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTimeRest');
    try {
      return super.incrementTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeRest() {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTimeRest');
    try {
      return super.decrementTimeRest();
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
breakType: ${breakType}
    ''';
  }
}
