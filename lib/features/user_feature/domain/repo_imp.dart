import 'dart:developer';

import 'package:flutter_application_1/cores/utils/di.dart';
import 'package:flutter_application_1/cores/utils/dio_manager/dio_manager.dart';
import 'package:flutter_application_1/cores/utils/endpints.dart';
import 'package:flutter_application_1/features/user_feature/data/data_sourcee/remote/repo.dart';
import 'package:flutter_application_1/features/user_feature/domain/models/user_model.dart';

class HomeRepoImp extends HomeRepo {
  HomeRepoImp(this.dio);
  DioHelper? dio = getIt.get<DioHelper>();
  @override
  Future<List<dynamic>?> getAllPerson() async {
    List<dynamic> myList = [];
    try {
      await dio!.getData(path: getUser).then((value) {
        print(value);
        myList = value.data.map((e) {
          print(e.toString());
          return UserModels.fromJson(e);
        }).toList();
        print(";sdfsdfsfd");
        print(myList.length);
        return myList;
      });
      return myList;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
