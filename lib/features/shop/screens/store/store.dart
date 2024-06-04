import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/appbar/appbar.dart';
import 'package:zulfaniz_store/common/widgets/appbar/tabbar.dart';
import 'package:zulfaniz_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:zulfaniz_store/common/widgets/layouts/grid_layout.dart';
import 'package:zulfaniz_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:zulfaniz_store/common/widgets/texts/section_heading.dart';
import 'package:zulfaniz_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:zulfaniz_store/utils/constants/colors.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';
import 'package:zulfaniz_store/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/brands/brand_card.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: Colors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // Search Bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                          text: 'Cari Di Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        // Featured Brands
                        TSectionHeading(
                            title: 'Brands Ternama', onPressed: () {}),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: false);
                            }),
                      ],
                    ),
                  ),

                  // Tab
                  bottom: const TTabBar(tabs: [
                    Tab(child: Text('Sport')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronix')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetic')),
                  ])),
            ];
          },
          body: const TabBarView(
            children: [
              TCategorytab(),
              TCategorytab(),
              TCategorytab(),
              TCategorytab(),
              TCategorytab(),
            ],
          ),
        ),
      ),
    );
  }
}
