import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:zulfaniz_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:zulfaniz_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:zulfaniz_store/utils/constants/colors.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';
import 'package:zulfaniz_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.user),
                  backgroundColor: TColors.white,
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  'Hisyam Abilkhoir',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '01 April 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          'Saya sangat suka dengan produk, sesuai deskripsi yang tertera dan yang pasti barang kualitas premium, semoga barang tetep awet dan nyaman untuk dipakai',
          trimLength: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Tampilkan lebih sedikit',
          trimCollapsedText: ' Tampilkan lebih banyak',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: TColors.primary,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //  Company Reviews
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Zulfaniz Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '02 April 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'Baik Terimaksih, atas komentar yang anda berikan, Saya sangat suka dengan produk, sesuai deskripsi yang tertera dan yang pasti barang kualitas premium, semoga barang tetep awet dan nyaman untuk dipakai',
                  trimLength: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Tampilkan lebih sedikit',
                  trimCollapsedText: ' Tampilkan lebih banyak',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
