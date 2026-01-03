import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(count: 0, isIncremented: false));

  void countIncrement() {
    emit(CounterState(count: state.count + 1, isIncremented: true));
  }

  void countDecrement() {
    emit(CounterState(count: state.count - 1, isIncremented: false));
  }
}
