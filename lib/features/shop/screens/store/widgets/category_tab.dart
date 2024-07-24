import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/layouts/grid_layout.dart';
import 'package:m_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class MCategoryTab extends StatelessWidget {
  const MCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              const MBrandShowcase(
                images: [
                  MImage.productImage17,
                  MImage.productImage18,
                  MImage.productImage19
                ],
              ),
              const MBrandShowcase(
                images: [
                  MImage.productImage17,
                  MImage.productImage18,
                  MImage.productImage19
                ],
              ),
              const SizedBox(height: MSizes.spaceBtwItems),

              /// -- Products
              MSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: MSizes.spaceBtwItems),

              MGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MProductCardVertical()),
              const SizedBox(height: MSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
