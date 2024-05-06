import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/cores/utils/di.dart';
import 'package:flutter_application_1/features/user_feature/data/data_sourcee/remote/repo.dart';
import 'package:flutter_application_1/features/user_feature/domain/models/user_model.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  HomeRepo homeRepo = getIt.get<HomeRepo>();
  List<dynamic> myList = [];
  void getUserFormCubit() async {
    myList = [];
    emit(HomeUserLoadingState());
    var userModel = await homeRepo.getAllPerson();
    if (userModel != null) {
      myList.addAll(userModel);
      emit(HomeUserSuccessgState());
    }
    emit(HomeUserErrorState());
  }
}
