import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

//import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const MBottomAddToCard(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const MProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: MSizes.defaultSpace,
                left: MSizes.defaultSpace,
                bottom: MSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating  & Share Button
                  const MRatingAndShare(),

                  /// - Price, Title, Stock, & Brand
                  const MProductMetaData(),

                  /// - Atttributes
                  const MProductAttributes(),
                  const SizedBox(height: MSizes.spaceBtwSections),

                  /// - Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: MSizes.spaceBtwSections),

                  /// - Description
                  const MSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: MSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  const Divider(),
                  const SizedBox(height: MSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.arrow_right3, size: 18),
                      )
                    ],
                  ),
                  const SizedBox(height: MSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
