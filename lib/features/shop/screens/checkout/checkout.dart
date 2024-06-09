import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zulfaniz_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:zulfaniz_store/common/widgets/success_screen/success_screen.dart';
import 'package:zulfaniz_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:zulfaniz_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:zulfaniz_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:zulfaniz_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:zulfaniz_store/navigation_menu.dart';
import 'package:zulfaniz_store/utils/constants/colors.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';
import 'package:zulfaniz_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Item In Cart
              const TCartItems(showAddRemoveButtom: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Coupon Textfield
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Devider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Payment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    // Address
                    TBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // checkout bottom
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
                image: TImages.successImage,
                title: 'Pembayaran Berhasil !',
                subTitle: 'Kami akan segera menyiapkan pesanan anda.',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              )),
          child: const Text('Checkout \$2565.0'),
        ),
      ),
    );
  }
}
