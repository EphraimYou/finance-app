import 'package:finance_app/feature/home/presentation/controller/cubit/home_cubit.dart';
import 'package:finance_app/feature/home/presentation/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // handle side effects
        },
        builder: (context, state) {
          HomeCubit cubit = HomeCubit.get(context);
          return SafeArea(
            child: Scaffold(
              bottomNavigationBar: BottomNavBarWidget(
                currentIndex: cubit.currentIndex,
                onTap: (index) => cubit.changeTap(index),
              ),
              // body: cubit.screens[cubit.currentIndex],
              body: cubit.screens[1],
            ),
          );
        },
      ),
    );
  }
}
