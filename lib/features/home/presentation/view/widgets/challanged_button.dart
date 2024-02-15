import 'package:flutter/material.dart';
import 'package:sepha_app/core/widgets/Custom_sizebox.dart';
import 'package:sepha_app/core/widgets/Custom_text.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';

class ChallangedButton extends StatelessWidget {
  const ChallangedButton({
    super.key,
    required this.sephaCubit,
  });

  final SephaCubit sephaCubit;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  sephaCubit.getGoal(20000);
                },
                child: const CustomText(
                  text: '20000+',
                )),
            const CustomSizeBox(
              w: .01,
              h: 0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  sephaCubit.getGoal(10000);
                },
                child: const CustomText(
                  text: '10000+',
                )),
            const CustomSizeBox(
              w: .01,
              h: 0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  sephaCubit.getGoal(1000);
                },
                child: const CustomText(
                  text: '1000+',
                )),
            const CustomSizeBox(
              w: .01,
              h: 0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  sephaCubit.getGoal(500);
                },
                child: const CustomText(
                  text: '500+',
                )),
            const CustomSizeBox(
              w: .01,
              h: 0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  sephaCubit.getGoal(100);
                },
                child: const CustomText(
                  text: '100+',
                )),
          ],
        ),
      ),
    );
  }
}
