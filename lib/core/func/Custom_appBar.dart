import 'package:flutter/material.dart';
import 'package:sepha_app/features/home/presentation/manager/sepha_cubit/sepha_cubit.dart';

AppBar customAppBar(SephaCubit sephacubit) {
  return AppBar(
      backgroundColor: sephacubit.color ?? Colors.red,
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {
              sephacubit.resetValue();
            },
            icon: const Icon(Icons.refresh)),
      ],
      leading: IconButton(
          onPressed: () {
            sephacubit.openDrawer();
          },
          icon: const Icon(Icons.menu)));
}
