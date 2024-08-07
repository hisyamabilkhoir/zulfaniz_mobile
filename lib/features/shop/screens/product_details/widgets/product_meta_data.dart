import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/images/t_circular_image.dart';
import 'package:zulfaniz_store/common/widgets/texts/product_price_text.dart';
import 'package:zulfaniz_store/common/widgets/texts/product_title_text.dart';
import 'package:zulfaniz_store/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:zulfaniz_store/utils/constants/enums.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale Price
        Row(
          children: [
            // Sale tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            // Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Title
        const TProductTitleText(title: 'Kain Wolcrep Premium Plus'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: 8),
            Text('Tersedia', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.zulfanizLogo3,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(
              title: 'Zulfaniz',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
      ],
    );
  }
}
