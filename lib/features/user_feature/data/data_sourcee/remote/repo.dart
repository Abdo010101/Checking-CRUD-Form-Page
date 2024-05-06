import 'package:flutter_application_1/features/user_feature/domain/models/user_model.dart';

abstract class HomeRepo {
  Future<List<dynamic>?> getAllPerson();
}
