import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:zulfaniz_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:zulfaniz_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:zulfaniz_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Searchbar
                  TSearchContainer(text: 'Cari Nama Produk'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Populer Kategori',
                          showActionButon: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        // Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Banner Slider
                  const TPromoSlider(
                    banners: [
                      TImages.bannerImage1,
                      TImages.bannerImage2,
                      TImages.bannerImage3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Heading
                  TSectionHeading(title: 'Produk Populer', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Product Populer
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
