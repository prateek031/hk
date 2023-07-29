// ignore_for_file: no_leading_underscores_for_local_identifiers, non_constant_identifier_names

import 'dart:async';

import 'package:blocc/blocs/internet_event.dart';
import 'package:blocc/blocs/internet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? ConnectivitySubscription;
  InternetBloc() : super(InternetInitialState()) {
    
    final Connectivity _connectivity = Connectivity();
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
    on<InternetGainedevent>((event, emit) => emit(InternetGainedState()));

    _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetGainedevent());
      } else {
        add(InternetLostEvent());
      }
    });
  }
  @override
  Future<void> close() {
    ConnectivitySubscription?.cancel();
    return super.close();
  }
}
