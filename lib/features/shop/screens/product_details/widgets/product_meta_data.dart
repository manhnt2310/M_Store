import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/common/widgets/images/m_circular_image.dart';
import 'package:m_store/common/widgets/texts/m_brand_title_text_with_verified_icon.dart';
import 'package:m_store/common/widgets/texts/product_price_text.dart';
import 'package:m_store/common/widgets/texts/product_title_text.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/image_strings.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/enums.dart';

class MProductMetaData extends StatelessWidget {
  const MProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = MHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale tag
            MRoundedContainer(
              radius: MSizes.sm,
              backgroundColor: MColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: MSizes.sm,
                vertical: MSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: MColors.black),
              ),
            ),

            const SizedBox(width: MSizes.spaceBtwItems),

            /// Price
            Text(
              '\$2500',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: MSizes.spaceBtwItems),
            const MProductPriceText(price: '1875', isLarge: true),
          ],
        ),

        const SizedBox(height: MSizes.spaceBtwItems / 1.5),

        /// Title
        const MProductTitleText(title: 'Air Jordan 1 Off-White'),
        const SizedBox(height: MSizes.spaceBtwItems / 1.5),

        /// Stock Status
        Row(
          children: [
            const MProductTitleText(title: 'Status'),
            const SizedBox(width: MSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            MCircularImage(
              image: MImage.nike,
              width: 32,
              height: 32,
              overlayColor: darkMode ? MColors.white : MColors.black,
            ),
            const MBrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
