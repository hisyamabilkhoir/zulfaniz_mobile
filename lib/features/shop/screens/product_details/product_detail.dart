import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:zulfaniz_store/common/widgets/texts/section_heading.dart';
import 'package:zulfaniz_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

import '../checkout/checkout.dart';
import 'widgets/buttom_add_to_cart_widget.dart';
import 'widgets/product_attributes.dart';
import 'widgets/product_detail_image_silder.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Produk Image Slider
            const TProductImageSlider(),

            // 2.Product Detail
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  // Rating and share
                  const TRatingAndShare(),

                  // Price, title, stock and brand
                  const TProductMetaData(),

                  // Atribute
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => const CheckoutScreen()),
                        child: const Text('Checkout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Deskription
                  const TSectionHeading(
                    title: 'Deskripsi',
                    showActionButon: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur impedit officia esse quam obcaecati aspernatur ex provident excepturi amet? Numquam sequi incidunt placeat rem. Laborum nemo deleniti minus vero a, quasi blanditiis quo ratione est corporis consectetur non quam consequatur repellat suscipit officiis totam? Minima cupiditate hic sapiente in, provident numquam perferendis dicta ipsam eum corrupti! Molestiae asperiores esse sint ipsa. Error, quod? Excepturi nemo ipsam maxime laborum quam nesciunt earum. Quod id repudiandae culpa! Impedit error quibusdam blanditiis neque temporibus! Numquam, dolor atque voluptatum debitis laborum reiciendis nostrum totam voluptas sed deleniti, ratione fugit soluta voluptate distinctio alias beatae doloremque sint. Ut dolore sapiente unde accusamus iure id incidunt ex natus commodi temporibus sed alias labore repudiandae perferendis, eos illum sequi quod, dignissimos nostrum numquam architecto laboriosam quo eveniet placeat. Eaque dicta asperiores fuga. Ut blanditiis vitae molestiae quia tempora dicta modi voluptas. Blanditiis ex provident, similique magni error sapiente molestias quod natus quo architecto et sint at porro suscipit iusto voluptates nobis quis? Doloribus nam culpa asperiores cum, eaque, veritatis alias magni fugit, molestias in dolor cupiditate soluta sequi ad provident itaque ut cumque officia! Maiores nulla, numquam sit quod recusandae tempora pariatur officia a animi, debitis dolores?',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Lihat Lebih Banyak',
                    trimExpandedText: ' Lihat Lebih Sedikit',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Review(199)', showActionButon: false),
                      IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
