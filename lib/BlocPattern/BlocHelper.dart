import 'package:bloc/bloc.dart';
import 'package:bloc_design_pattern/BlocPattern/BlocEvents.dart';

class BlocHelper extends Bloc<BlocEvents,int>{
  BlocHelper() : super(0);
  
  @override
  Stream<int> mapEventToState(BlocEvents event) async*{
    switch (event) {
      case BlocEvents.increment :
        yield state +1 ;
        break;
        case BlocEvents.decrement :
        if (state !=0) {
          yield state -1 ;
        }
        break;
    }
  }

  @override
  void onTransition(Transition<BlocEvents, int> transition) {
    super.onTransition(transition);
    //print(transition) ;
  }

  @override
  void onEvent(BlocEvents event) {
    super.onEvent(event);
    //print(event) ;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
  
}