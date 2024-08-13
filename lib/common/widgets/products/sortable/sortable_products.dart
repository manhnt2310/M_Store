import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/products/product_cards/product_card_vertical.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';

class MSortableProducts extends StatelessWidget {
  const MSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          onChanged: (value) {},
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map(
                (option) =>
                    DropdownMenuItem(value: option, child: Text(option)),
              )
              .toList(),
        ),
        const SizedBox(height: MSizes.spaceBtwSections),

        /// Products
        MGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => const MProductCardVertical()),
      ],
    );
  }
}
