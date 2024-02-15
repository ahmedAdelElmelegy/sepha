import 'package:flutter/material.dart';
import 'package:sepha_app/core/func/Resp_text.dart';
import 'package:sepha_app/core/widgets/Custom_sizebox.dart';
import 'package:sepha_app/core/widgets/Custom_text.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.sephaCubit});
  final SephaCubit sephaCubit;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        DrawerHeader(
            child: Center(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('assets/image/allah-vector-23930389.jpg'),
              ),
              CustomText(
                text: 'عدد التسبيحات',
                fontWeight: FontWeight.bold,
                fontSize: RespText.getResponsiveFontSize(context, 20),
                color: Colors.green,
              ),
            ],
          ),
        )),
        CustomText(
          text: '${sephaCubit.collectC[0]}  :استغفر الله العظيم',
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: RespText.getResponsiveFontSize(context, 23),
        ),
        const CustomSizeBox(
          h: .05,
        ),
        CustomText(
          text: '${sephaCubit.collectC[1]}  :سبحان الله والحمد لله',
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: RespText.getResponsiveFontSize(context, 23),
        ),
        const CustomSizeBox(
          h: .05,
        ),
        CustomText(
          text: '${sephaCubit.collectC[2]}  :صلي علي رسول الله',
          fontWeight: FontWeight.bold,
          color: Colors.orange,
          fontSize: RespText.getResponsiveFontSize(context, 23),
        ),
        const CustomSizeBox(
          h: .05,
        ),
        CustomText(
          text: '${sephaCubit.collectC[3]}  :لا اله الا الله محمد رسول الله ',
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          fontSize: RespText.getResponsiveFontSize(context, 23),
        ),
      ],
    ));
  }
}
