import 'package:geolocator/geolocator.dart';

abstract class HomeState {}

class InitHomeState extends HomeState {}

class SuccessHomeState extends HomeState {
  final Position currentPosition;

  SuccessHomeState({required this.currentPosition});
}

class ErrorHomeState extends HomeState {
  final String message;

  ErrorHomeState({required this.message});
}
