import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/brands/brand_card.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';

class MBrandShowcase extends StatelessWidget {
  const MBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MRoundedContainer(
      showBorder: true,
      borderColor: MColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MSizes.md),
      margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
      child: Column(
        children: [
          /// -- Brands with Products Count
          const MBrandCard(showBorder: false),
          const SizedBox(height: MSizes.spaceBtwItems),

          /// -- Brands Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: MRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(MSizes.md),
        margin: const EdgeInsets.only(right: MSizes.sm),
        backgroundColor: MHelperFunctions.isDarkMode(context)
            ? MColors.darkGrey
            : MColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
