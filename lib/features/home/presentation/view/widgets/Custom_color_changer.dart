import 'package:flutter/material.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';

class CustomColorChanger extends StatelessWidget {
  const CustomColorChanger({
    super.key,
    required this.sephaCubit,
  });

  final SephaCubit sephaCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Radio(
            value: 0,
            groupValue: sephaCubit.groupValue,
            onChanged: (value) {
              sephaCubit.changeColor(value: value!);
            },
          ),
          Radio(
            value: 1,
            groupValue: sephaCubit.groupValue,
            onChanged: (value) {
              sephaCubit.changeColor(value: value!);
            },
          ),
          Radio(
            value: 2,
            groupValue: sephaCubit.groupValue, //its control of all radio
            onChanged: (value) {
              sephaCubit.changeColor(value: value!);
            },
          ),
          Radio(
            value: 3,
            groupValue: sephaCubit.groupValue, //its control of all radio
            onChanged: (value) {
              sephaCubit.changeColor(value: value!);
            },
          )
        ],
      ),
    );
  }
}
