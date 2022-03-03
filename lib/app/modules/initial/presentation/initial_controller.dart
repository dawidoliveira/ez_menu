import 'package:ezmenu/app/modules/initial/presentation/initial_state.dart';
import 'package:flutter/material.dart';

class InitialController extends ValueNotifier<InitialState> {
  InitialController() : super(InitState());

  final pageController = PageController();

  final _currentIndex = ValueNotifier(0);

  // Getters & Setters
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;

  // Functions
  Future<void> changePage(int page) async {
    currentIndex = page;
    notifyListeners();
    await pageController.animateToPage(
      page,
      duration: kThemeAnimationDuration,
      curve: Curves.ease,
    );
  }
}
