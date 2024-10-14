import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/layouts/grid_layout.dart';
import 'package:m_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MAppBar(
          title: Text('Popular Products'),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MSizes.defaultSpace),
            child: Column(
              children: [
                /// Dropdown
                DropdownButtonFormField(
                  onChanged: (value) {},
                  decoration:
                      const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  items: [
                    'Name',
                    'Higher Price',
                    'Lower Price',
                    'Sale',
                    'Newest',
                    'Popularity'
                  ]
                      .map(
                        (option) => DropdownMenuItem(
                            value: option, child: Text(option)),
                      )
                      .toList(),
                ),
                const SizedBox(height: MSizes.spaceBtwSections),

                /// Products
                MGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, index) => const MProductCardVertical()),
              ],
            ),
          ),
        ));
  }
}
