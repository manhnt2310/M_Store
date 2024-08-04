import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/common/widgets/texts/product_price_text.dart';
import 'package:m_store/common/widgets/texts/product_title_text.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MProductAttributes extends StatelessWidget {
  const MProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// - Selected Attibute Pricing & Description
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          backgroundColor: dark ? MColors.darkGrey : MColors.grey,
          child: Column(
            children: [
              /// Title, Price and Stock Status
              Row(
                children: [
                  const MSectionHeading(
                      title: 'Varidation', showActionButton: false),
                  const SizedBox(width: MSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MProductTitleText(
                              title: 'Price : ', smallSize: true),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: MSizes.spaceBtwItems),

                          /// Sale Price
                          const MProductPriceText(price: '20')
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const MProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Varidation Description
              const MProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),

        const SizedBox(height: MSizes.spaceBtwItems),

        /// - Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: MSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MChoiceChip(
                    text: 'Red', selected: true, onSelected: (value) {}),
                MChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                MChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MSectionHeading(title: 'Sizes', showActionButton: false),
            const SizedBox(height: MSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                MChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                MChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                MChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
