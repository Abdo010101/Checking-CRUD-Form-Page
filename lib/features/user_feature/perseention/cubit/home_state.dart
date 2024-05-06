part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeUserLoadingState extends HomeState {}

class HomeUserSuccessgState extends HomeState {}

class HomeUserErrorState extends HomeState {}
