import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_sizes.dart';
import '../../../../core/app_text_styles.dart';

class EstablishmentListWidget extends StatelessWidget {
  const EstablishmentListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.size24px,
      ),
      color: AppColors.snow,
      child: Column(
        children: [
          Container(
            width: AppSizes.size31px,
            height: AppSizes.size6px,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.grey2,
            ),
          ),
          const SizedBox(height: AppSizes.size31px),
          Text(
            "Estabelecimentos encontrados:",
            style: AppTextStyles.titleMedium,
          ),
          const SizedBox(height: AppSizes.size16px),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.size24px),
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizes.size6px),
                    child: Material(
                      color: AppColors.secondary2.withOpacity(.7),
                      child: ListTile(
                        onTap: () {},
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.size24px,
                        ),
                        title: Text(
                          'Bar do manoel',
                          style: AppTextStyles.miniBold
                              .copyWith(color: AppColors.snow),
                        ),
                        subtitle: Text(
                          'Av. Porto de Pedras - 4500 Neopolis - Natal/RN',
                          style: AppTextStyles.mini
                              .copyWith(color: AppColors.snow),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward,
                          color: AppColors.secondary3,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) =>
                    const SizedBox(height: AppSizes.size14px),
                itemCount: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
