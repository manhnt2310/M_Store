import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/images/m_rounded_image.dart';
import 'package:m_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/utils/constants/image_strings.dart';

import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const MRoundedImage(
                width: double.infinity,
                imageUrl: MImage.promoBanner4,
                applyImageRadius: true,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              /// Sub Categories
              Column(
                children: [
                  /// Heading
                  MSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: MSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          const MProductCardHorizontal(),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: MSizes.spaceBtwItems),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
