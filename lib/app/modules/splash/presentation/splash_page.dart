import 'package:ezmenu/app/core/app_colors.dart';
import 'package:ezmenu/app/core/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  static const routeId = '/';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(AppImages.logo),
      ),
    );
  }
}
