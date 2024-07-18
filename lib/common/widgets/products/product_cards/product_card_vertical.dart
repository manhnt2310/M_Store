import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/styles/shadows.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/common/widgets/images/m_rounded_image.dart';
import 'package:m_store/common/widgets/texts/m_brand_title_text_with_verified_icon.dart';
import 'package:m_store/common/widgets/texts/product_price_text.dart';
import 'package:m_store/common/widgets/texts/product_title_text.dart';
import 'package:m_store/utils/constants/image_strings.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/m_circular_icon.dart';

class MProductCardVertical extends StatelessWidget {
  const MProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MSizes.productImageRadius),
          color: dark ? MColors.darkerGrey : MColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            MRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MSizes.sm),
              backgroundColor: dark ? MColors.dark : MColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const MRoundedImage(
                    imageUrl: MImage.productImage1,
                    applyImageRadius: true,
                  ),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: MRoundedContainer(
                      radius: MSizes.md,
                      backgroundColor: MColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: MSizes.sm, vertical: MSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MColors.black),
                      ),
                    ),
                  ),

                  /// -- Favorite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: MCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: MSizes.spaceBtwItems / 2),

            /// Details
            const Padding(
              padding: EdgeInsets.all(MSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MProductTitleText(
                    title: 'Air Jordan 1',
                    smallSize: true,
                  ),
                  SizedBox(height: MSizes.spaceBtwItems / 2),
                  MBrandTitleTextWithVerifiedIcon(title: 'Nike')
                ],
              ),
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                const Padding(
                  padding: EdgeInsets.only(left: MSizes.sm),
                  child: MProductPriceText(price: '2500'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: MColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MSizes.cardRadiusMd),
                      bottomRight: Radius.circular(MSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: MSizes.iconLg * 1.2,
                    height: MSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: MColors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
