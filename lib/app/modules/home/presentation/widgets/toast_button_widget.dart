import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_sizes.dart';
import '../../../../core/app_text_styles.dart';

class ToastButtonWidget extends StatelessWidget {
  const ToastButtonWidget({
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.secondary,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(100),
        splashColor: AppColors.snow.withOpacity(.1),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: AppSizes.size16px),
          child: Text(
            text,
            style: AppTextStyles.semiBold.copyWith(color: AppColors.snow),
          ),
        ),
      ),
    );
  }
}
