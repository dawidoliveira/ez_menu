import 'package:flutter/material.dart';

mixin LoadingMixin on ChangeNotifier {
  final _isLoading = ValueNotifier(false);

  // Getters & Setters
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  // Functions
  Future<void> executeWithLoading(Future<void> Function() fn) async {
    isLoading = true;
    notifyListeners();
    await fn();
    isLoading = false;
    notifyListeners();
  }
}
