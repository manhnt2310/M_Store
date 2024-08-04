import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:m_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:m_store/features/shop/screens/product_reviews/widgets/user_review_card2.dart';
import 'package:m_store/features/shop/screens/product_reviews/widgets/user_review_card3.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: MAppBar(
        title: Text(
          'Reviews & Ratings',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same of device that you use.'),
              const SizedBox(height: MSizes.spaceBtwItems),

              /// Overall Ratings
              const MOverallProductRating(),
              const MRatingBarIndicator(rating: 4.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: MSizes.spaceBtwSections),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard2(),
              const UserReviewCard3(),
            ],
          ),
        ),
      ),
    );
  }
}
