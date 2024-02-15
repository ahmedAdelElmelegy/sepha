import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  Future<void> loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    final counter = prefs.getInt('total_counter') ?? 0;
    emit(counter);
  }

  Future<void> incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    int updatedCounter = state + 1;
    await prefs.setInt('total_counter', updatedCounter);
    emit(updatedCounter);
  }
}
