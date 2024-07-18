import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:m_store/common/widgets/layouts/grid_layout.dart';
import 'package:m_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:m_store/common/widgets/texts/m_brand_title_text_with_verified_icon.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/enums.dart';
import 'package:m_store/utils/constants/image_strings.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/images/m_circular_image.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          MCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: MHelperFunctions.isDarkMode(context)
                  ? MColors.black
                  : MColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(MSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// -- Search Bar
                    const SizedBox(height: MSizes.spaceBtwItems),
                    const MSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: MSizes.spaceBtwSections),

                    /// -- Featured Brands
                    MSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(height: MSizes.spaceBtwItems / 1.5),

                    MGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: MRoundedContainer(
                            padding: const EdgeInsets.all(MSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                // Icon
                                Flexible(
                                  child: MCircularImage(
                                    isNetworkImage: false,
                                    image: MImage.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        MHelperFunctions.isDarkMode(context)
                                            ? MColors.white
                                            : MColors.black,
                                  ),
                                ),
                                const SizedBox(width: MSizes.spaceBtwItems / 2),

                                // Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const MBrandTitleTextWithVerifiedIcon(
                                        title: "Nike",
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
