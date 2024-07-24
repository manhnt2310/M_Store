import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:m_store/common/widgets/layouts/grid_layout.dart';
import 'package:m_store/common/widgets/products/cart/brand_card.dart';
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
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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

                        /// -- Brands GRID
                        MGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const MBrandCard(showBorder: false);
                          },
                        )
                      ],
                    ),
                  ),

                  /// Tabs - Tutorial [Section # 3, Video # 8]
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorColor: MColors.primary,
                    unselectedLabelColor: MColors.darkGrey,
                    labelColor: MHelperFunctions.isDarkMode(context)
                        ? MColors.white
                        : MColors.primary,
                    tabs: [
                      Tab(child: Text('Sport')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmestics')),
                    ],
                  )),
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}
