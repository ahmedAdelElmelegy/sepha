import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sepha_app/core/func/Resp_text.dart';
import 'package:sepha_app/core/widgets/Custom_sizebox.dart';
import 'package:sepha_app/core/widgets/Custom_text.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';
import 'package:sepha_app/features/home/presentation/view/widgets/Custom_color_changer.dart';
import 'package:sepha_app/features/home/presentation/view/widgets/Custom_inc_dec_button.dart';
import 'package:sepha_app/features/home/presentation/view/widgets/Custom_present_indicator.dart';
import 'package:sepha_app/features/home/presentation/view/widgets/challanged_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key, required this.sephaCubit});
  final SephaCubit sephaCubit;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * .2,
          width: double.infinity,
          decoration: BoxDecoration(color: sephaCubit.color ?? Colors.red),
          child: Column(
            children: [
              CustomText(
                text: 'الهدف',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: RespText.getResponsiveFontSize(context, 30),
              ),
              CustomIncAnddecButton(sephaCubit: sephaCubit),
              const CustomSizeBox(
                h: 0.02,
              ),
              ChallangedButton(sephaCubit: sephaCubit)
            ],
          ),
        ),
        const CustomSizeBox(
          h: 0.05,
        ),
        CustomText(
          text: sephaCubit.item[sephaCubit.groupValue!],
          color: sephaCubit.color ?? Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: RespText.getResponsiveFontSize(context, 25),
        ),
        CustomText(
          text: '${sephaCubit.countX[sephaCubit.groupValue!]}',
          color: sephaCubit.color ?? Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: RespText.getResponsiveFontSize(context, 30),
        ),
        const CustomSizeBox(
          h: .02,
        ),
        CustomPresentIndicatot(sephaCubit: sephaCubit),
        const CustomSizeBox(
          h: .03,
        ),
        CustomText(
          text: '${sephaCubit.reuseT[sephaCubit.groupValue!]} : مرات التكرار',
          color: sephaCubit.color ?? Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: RespText.getResponsiveFontSize(context, 20),
        ),
        const CustomSizeBox(
          h: .01,
        ),
        CustomText(
          text: '${sephaCubit.collectC[sephaCubit.groupValue!]}: المجموع ',
          color: sephaCubit.color ?? Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: RespText.getResponsiveFontSize(context, 30),
        ),
        const Spacer(),
        CustomColorChanger(sephaCubit: sephaCubit)
      ],
    );
  }
}
