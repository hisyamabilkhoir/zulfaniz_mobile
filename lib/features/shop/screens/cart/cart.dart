import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/appbar/appbar.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

import 'widgets/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Keranjang',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // Items in Cart
        child: TCartItems(),
      ),

      // checkout bottom
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$2565.0'),
        ),
      ),
    );
  }
}
