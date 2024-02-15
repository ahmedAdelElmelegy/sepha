import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';

class CustomPresentIndicatot extends StatelessWidget {
  const CustomPresentIndicatot({
    super.key,
    required this.sephaCubit,
  });

  final SephaCubit sephaCubit;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80,
      lineWidth: 5.0,
      percent: sephaCubit.countX[sephaCubit.groupValue!] / 33,
      center: IconButton(
          onPressed: () {
            sephaCubit.incrementCounter(33);
          },
          icon: Icon(
            Icons.touch_app,
            size: 40,
            color: sephaCubit.color ?? Colors.red,
          )),
      progressColor: sephaCubit.color ?? Colors.red,
      backgroundColor: Colors.red.shade100,
    );
  }
}
