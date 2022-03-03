import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_text_styles.dart';
import '../initial_controller.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final InitialController controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: controller,
        builder: (_, state, __) {
          return BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: (value) => controller.changePage(value),
            selectedLabelStyle:
                AppTextStyles.navBold.copyWith(color: AppColors.coal),
            selectedItemColor: AppColors.coal,
            unselectedLabelStyle:
                AppTextStyles.navRegular.copyWith(color: AppColors.grey),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'Visitados',
              ),
            ],
          );
        });
  }
}
