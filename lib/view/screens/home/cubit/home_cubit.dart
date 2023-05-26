import 'package:bloc/bloc.dart';
import 'package:exchange_app/view/screens/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());
}
