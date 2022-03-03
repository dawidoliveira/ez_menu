import 'package:ezmenu/app/modules/home/presentation/home_page.dart';
import 'package:ezmenu/app/modules/visiteds/presentation/visiteds_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'initial_controller.dart';
import 'widgets/bottom_navigation_bar_widget.dart';

class InitialPage extends StatefulWidget {
  static const routeId = '/home/';

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends ModularState<InitialPage, InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          HomePage(),
          VisitedsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(controller: controller),
    );
  }
}
