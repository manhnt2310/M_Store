import 'package:flutter/material.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:m_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            MProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                right: MSizes.defaultSpace,
                left: MSizes.defaultSpace,
                bottom: MSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating  & Share Button
                  MRatingAndShare(),

                  /// - Price, Title, Stock, & Brand
                  MProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
