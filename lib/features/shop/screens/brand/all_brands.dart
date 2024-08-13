import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/brands/brand_card.dart';
import 'package:m_store/common/widgets/layouts/grid_layout.dart';
import 'package:m_store/features/shop/screens/brand/brand_products.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/texts/section_heading.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const MSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: MSizes.spaceBtwItems),

              /// Brands
              MGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => MBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
