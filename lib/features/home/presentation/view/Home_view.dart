import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sepha_app/core/func/Custom_appBar.dart';
import 'package:sepha_app/core/func/Resp_text.dart';
import 'package:sepha_app/core/widgets/Custom_text.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';
import 'package:sepha_app/features/home/presentation/view/widgets/CustomDrawer.dart';
import 'package:sepha_app/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SephaCubit, SephaState>(
      listener: (context, state) {
        if (state is ReachTheGoalSucess) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: BlocProvider.of<SephaCubit>(context).color,
                title: Center(
                    child: CustomText(
                  text: '💪 مبروك يا بطل ',
                  color: Colors.white,
                  fontSize: RespText.getResponsiveFontSize(context, 25),
                )),
                content: CustomText(
                  text: "${state.goal} :لقد وصلت لمستوي متقدم وهو",
                  fontSize: RespText.getResponsiveFontSize(context, 20),
                  color: Colors.white,
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const CustomText(text: 'Cancel'))
                ],
              );
            },
          );
        }
      },
      builder: (context, state) {
        var sephacubit = SephaCubit.get(context);
        return Scaffold(
          key: sephacubit.scafforldKey,
          drawer: CustomDrawer(sephaCubit: sephacubit),
          appBar: customAppBar(sephacubit),
          body: HomeViewBody(sephaCubit: sephacubit),
        );
      },
    );
  }
}
