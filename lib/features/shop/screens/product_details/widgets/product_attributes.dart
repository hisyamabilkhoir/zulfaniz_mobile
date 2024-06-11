import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:zulfaniz_store/common/widgets/texts/product_price_text.dart';
import 'package:zulfaniz_store/common/widgets/texts/product_title_text.dart';
import 'package:zulfaniz_store/common/widgets/texts/section_heading.dart';
import 'package:zulfaniz_store/utils/constants/colors.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Atribute Pricing & Deskription
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title, Price & Stock Status
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Detail Varian : ', showActionButon: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Harga : ',
                            smallSize: true,
                          ),
                          const SizedBox(width: 8),

                          // Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: 8),

                          // Sale Price
                          const TProductPriceText(price: '20'),
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stok : ',
                            smallSize: true,
                          ),
                          Text(
                            '90',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Varian deskription
              const TProductTitleText(
                title:
                    'Ini adalah deskripsi dari barang variann tersebut, serta menjelaskan detail dari produk tersebut',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Warna', showActionButon: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'Green', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Blue', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Red', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButon: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'XL', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'L', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'S', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
