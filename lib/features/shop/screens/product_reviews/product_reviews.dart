import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/appbar/appbar.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import 'widgets/rating_progress_indicator.dart';
import 'widgets/user_review_card.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: const TAppBar(
        title: Text('Ulasan Pembeli'),
        showBackArrow: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Berikut adalah ulasan dan rating dari pembeli dengan sejujur - jujurnya.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Overal Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text('12,343', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              // User review list
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
