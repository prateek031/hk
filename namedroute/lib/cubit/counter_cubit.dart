
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0, isincremented: true),);

  void increment()=> emit(CounterState(counterValue:state.counterValue+1,isincremented: true));
   void decrement()=> emit(CounterState(counterValue:state.counterValue-1,isincremented: false));
}
