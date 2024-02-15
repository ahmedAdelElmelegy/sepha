import 'package:flutter/material.dart';
import 'package:sepha_app/core/func/Resp_text.dart';
import 'package:sepha_app/core/widgets/Custom_sizebox.dart';
import 'package:sepha_app/core/widgets/Custom_text.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';

class CustomIncAnddecButton extends StatelessWidget {
  const CustomIncAnddecButton({
    super.key,
    required this.sephaCubit,
  });

  final SephaCubit sephaCubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            sephaCubit.incrementBy1();
          },
          icon: const Icon(
            Icons.add_circle,
            color: Colors.white,
            size: 25,
          ),
        ),
        const CustomSizeBox(
          w: .03,
          h: 0,
        ),
        CustomText(
          text: '${sephaCubit.goal}',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: RespText.getResponsiveFontSize(context, 30),
        ),
        const CustomSizeBox(
          w: .03,
          h: 0,
        ),
        IconButton(
          onPressed: () {
            sephaCubit.decrementBy1();
          },
          icon: const Icon(
            Icons.remove_circle,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
