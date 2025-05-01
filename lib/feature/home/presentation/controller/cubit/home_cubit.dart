import 'package:bloc/bloc.dart';
import 'package:finance_app/feature/cart/presentation/screens/card_screen.dart';
import 'package:finance_app/feature/home/presentation/screens/home_screen.dart';
import 'package:finance_app/feature/profile/presentation/screens/profile_screen.dart';
import 'package:finance_app/feature/statistics/presentation/screens/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = [
    HomeScreen(),
    const CardScreen(),
    const ProfileScreen(),
    Container(color: Colors.white, child: Center(child: Text('Add Screen'))),
    const StatisticsScreen(),
    Container(color: Colors.blueAccent),
  ];
  int currentIndex = 0;
  void changeTap(int index) {
    currentIndex = index;
    emit(ChangeTapState());
  }
}
