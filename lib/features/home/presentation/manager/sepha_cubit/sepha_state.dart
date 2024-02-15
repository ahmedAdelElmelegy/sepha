part of 'sepha_cubit.dart';

@immutable
sealed class SephaState {}

final class SephaInitial extends SephaState {}

final class ChangeColorSucess extends SephaState {}

final class IncrementSucess extends SephaState {}

final class LoaudCounterSucess extends SephaState {
  final int totalCounter;

  LoaudCounterSucess({required this.totalCounter});
}

final class GetGoalSuecess extends SephaState {}

final class IncrementBy1Sucess extends SephaState {}

final class DecrementBy1 extends SephaState {}

final class ResetSucess extends SephaState {}

final class OpenDrawerSucess extends SephaState {}

final class ReachTheGoalSucess extends SephaState {
  final int goal;

  ReachTheGoalSucess({required this.goal});
}
