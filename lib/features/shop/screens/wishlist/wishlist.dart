import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/icons/m_circular_icon.dart';
import 'package:m_store/common/widgets/layouts/grid_layout.dart';
import 'package:m_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:m_store/features/shop/screens/home/home.dart';

import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title:
            Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              MGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, context) => const MProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
