import 'package:flutter/material.dart';
import 'package:m_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:m_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:m_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Tutorial [Section # 3, Video # 2]
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Appbar -- Tutorial [Section # 3, Video # 3]
                  MHomeAppBar(),
                  SizedBox(height: MSizes.spaceBtwSections),

                  /// Searchbar -- Tutorial [Section # 3, Video # 4]
                  MSearchContainer(text: 'Search in Store'),
                  SizedBox(height: MSizes.spaceBtwSections),

                  /// Categories -- Tutorial [Section # 3, Video # 4]
                  Padding(
                    padding: EdgeInsets.only(left: MSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        MSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: MColors.white,
                        ),
                        SizedBox(height: MSizes.spaceBtwItems),

                        /// -- Categories
                        MHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body -- Tutorial [Section # 3, Video # 5]
            Padding(
              padding: EdgeInsets.all(MSizes.defaultSpace),
              child: MPromoSlider(
                banners: [
                  MImage.promoBanner1,
                  MImage.promoBanner2,
                  MImage.promoBanner3,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
