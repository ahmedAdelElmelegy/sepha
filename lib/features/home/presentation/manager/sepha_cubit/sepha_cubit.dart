import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sepha_app/core/utils/Constatnt.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sepha_state.dart';

class SephaCubit extends Cubit<SephaState> {
  SephaCubit({required this.prefs}) : super(SephaInitial());
  static SephaCubit get(context) => BlocProvider.of(context);
  final SharedPreferences prefs;

  Color? color;
  int? groupValue = 0;
  void changeColor({required int value}) {
    groupValue = value;

    if (groupValue == 0) {
      color = Colors.red.shade900;
    } else if (groupValue == 1) {
      color = Colors.grey;
    } else if (groupValue == 2) {
      color = Colors.orange;
    } else {
      color = Colors.blueAccent;
    }
    emit(ChangeColorSucess());
  }

  List<int> countX = [0, 0, 0, 0];
  List<int> reuseT = [
    0,
    0,
    0,
    0,
  ];
  List<int> collectC = [
    0,
    0,
    0,
    0,
  ];

  void incrementCounter(int value) async {
    if (value != countX[groupValue!]) {
      countX[groupValue!] = countX[groupValue!] + 1;

      collectC[groupValue!]++;
      if (collectC[groupValue!] == goal) {
        emit(ReachTheGoalSucess(goal: goal));
      }

      emit(IncrementSucess());
      _saveValuesToPrefs();
    } else {
      countX[groupValue!] = 0;

      reuseT[groupValue!] = reuseT[groupValue!] + 1;
      _saveValuesToPrefs();
      emit(IncrementSucess());
    }
  }

  Future<void> loadValues() async {
    for (int i = 0; i < countX.length; i++) {
      countX[i] = prefs.getInt('x_$i') ?? 0;
      reuseT[i] = prefs.getInt('t_$i') ?? 0;
      collectC[i] = prefs.getInt('c_$i') ?? 0;
    }
  }

  Future<void> _saveValuesToPrefs() async {
    for (int i = 0; i < countX.length; i++) {
      prefs.setInt('x_$i', countX[i]);
      prefs.setInt('t_$i', reuseT[i]);
      prefs.setInt('c_$i', collectC[i]);
    }
  }

  List<String> item = [
    'استغفر الله العظيم',
    ' سبحان الله والحمد لله',
    'صلي علي رسول الله',
    'لا اله الا الله محمد رسول الله'
  ];

  int goal = 0;
  void incrementBy1() {
    goal = goal + 1;
    emit(IncrementBy1Sucess());
  }

  void decrementBy1() {
    goal = goal - 1;
    emit(DecrementBy1());
  }

  void getGoal(int g) {
    goal = goal + g;
    emit(GetGoalSuecess());
  }

  void resetValue() {
    goal = 0;
    emit(ResetSucess());
  }

  GlobalKey<ScaffoldState> scafforldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scafforldKey.currentState!.openDrawer();
    emit(OpenDrawerSucess());
  }
}
