import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ilearningapp/app_events.dart';
import 'package:ilearningapp/app_states.dart';

class AppBlocs extends Bloc<AppEvents,AppStates>{
  AppBlocs(): super(InitStates()){
    print("app bloc");
    on<Increment>((event,emit){
      // print('Am getting called');
        emit(AppStates(counter: state.counter+1));
        print(state.counter);
    });

    on<Decrement>((event,emit){
      // print('Am getting called');
      emit(AppStates(counter: state.counter-1));
      print(state.counter);
    });
  }

}
// int _counter = 0;
//
// void _incrementCounter() {
//   setState(() {
//     _counter++;
//   });
// }
//
// void _decrementCounter() {
//   setState(() {
//     _counter--;
//   });
// }
