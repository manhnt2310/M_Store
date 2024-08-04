import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:m_store/utils/constants/image_strings.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(MImage.userProfileImage1)),
                const SizedBox(width: MSizes.spaceBtwItems),
                Text(
                  'Minh Nguyen',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            const MRatingBarIndicator(rating: 4),
            const SizedBox(width: MSizes.spaceBtwInputFields),
            Text('01 Nov 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: MSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
        ),
        const SizedBox(height: MSizes.spaceBtwItems),

        /// Company Review
        MRoundedContainer(
          backgroundColor: dark ? MColors.darkerGrey : MColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(MSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("M's Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('01 Nov 2023',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: MSizes.spaceBtwItems),
                const ReadMoreText(
                  'We sincerely thank you for taking the time to praise our store. Serving and bringing satisfaction to you is our greatest honor. We look forward to welcoming you back to our store as soon as possible and hope to continue to bring you even more great products and services. Once again, thank you very much! ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'show more',
                  trimExpandedText: 'show less',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: MSizes.spaceBtwSections),
      ],
    );
  }
}
