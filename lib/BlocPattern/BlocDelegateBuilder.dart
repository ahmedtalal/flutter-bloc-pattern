import 'package:bloc/bloc.dart';

class BlocDelegateBuilder extends BlocObserver{
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition) ;
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event) ;
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    super.onError(cubit, error, stackTrace);
  }
}