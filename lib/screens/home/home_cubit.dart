import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam/screens/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial());
}
