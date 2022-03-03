import 'package:ezmenu/app/core/app_colors.dart';
import 'package:ezmenu/app/core/app_sizes.dart';
import 'package:ezmenu/app/core/app_text_styles.dart';
import 'package:ezmenu/app/modules/home/presentation/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'widgets/establishment_list_widget.dart';
import 'widgets/map_widget.dart';
import 'widgets/toast_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ValueListenableBuilder(
          valueListenable: controller,
          builder: (_, __, ___) {
            final state = controller.value is SuccessHomeState
                ? controller.value as SuccessHomeState
                : null;

            return Stack(
              alignment: const Alignment(0, -.75),
              children: [
                MapWidget(
                  mapController: controller.mapController,
                  state: state,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSizes.size31px),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 5,
                          spreadRadius: -3,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.size6px),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.snow,
                        hintText: 'Para onde você quer ir?',
                        hintStyle: AppTextStyles.regular,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: AppSizes.size24px,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.size31px),
                    child: ToastButtonWidget(
                      text: '5 estabelecimentos encontrados!',
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (_) {
                            return const EstablishmentListWidget();
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
