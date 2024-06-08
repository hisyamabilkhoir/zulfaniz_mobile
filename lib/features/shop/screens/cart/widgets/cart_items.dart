import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtom = true,
  });

  final bool showAddRemoveButtom;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          const TCartItem(),
          if (showAddRemoveButtom) const SizedBox(height: TSizes.spaceBtwItems),

          // Add Remove Button Row with total price
          if (showAddRemoveButtom)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extrack Space
                    SizedBox(width: 70),
                    // Add remove button
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                // Product Total price
                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
