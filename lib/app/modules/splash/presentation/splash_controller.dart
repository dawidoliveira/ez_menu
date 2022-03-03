import 'package:ezmenu/app/modules/initial/presentation/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashController extends ValueNotifier {
  SplashController() : super(null) {
    init();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
    Modular.to.pushReplacementNamed(InitialPage.routeId);
  }
}
