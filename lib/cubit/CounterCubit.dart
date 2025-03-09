import 'package:basketballpointcounterapp/cubit/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() :super(Counter_A_IncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamIncreament({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(Counter_A_IncrementState());
    } else if(team=='B')  {
      teamBPoints += buttonNumber;
      emit(Counter_B_IncrementState());
    }else
      {
       teamAPoints=0;
       teamBPoints=0;
        emit(Counter_x_IncrementState());
      }
  }
}
