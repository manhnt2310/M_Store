import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/m_circular_icon.dart';
import '../../../../../common/widgets/images/m_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class MProductImageSlider extends StatelessWidget {
  const MProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return MCurvedEdgeWidget(
      child: Container(
        color: dark ? MColors.darkGrey : MColors.light,
        child: Stack(
          children: [
            /// Main large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(MSizes.productImageRadius * 2),
                child: Center(
                    child: Image(image: AssetImage(MImage.productImage1))),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemBuilder: (_, index) => MRoundedImage(
                    width: 80,
                    backgroundColor: dark ? MColors.dark : MColors.white,
                    border: Border.all(color: MColors.primary),
                    padding: const EdgeInsets.all(MSizes.sm),
                    imageUrl: MImage.productImage3,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: MSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),

            /// Appbar Icons
            const MAppBar(
              showBackArrow: true,
              actions: [
                MCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
