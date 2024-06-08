import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/appbar/appbar.dart';
import 'package:zulfaniz_store/common/widgets/texts/product_price_text.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$2565.0'),
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Keranjang',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          itemCount: 4,
          itemBuilder: (_, index) => const Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
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
        ),
      ),
    );
  }
}
