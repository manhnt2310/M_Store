import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:m_store/features/shop/screens/checkout/checkout.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(MSizes.defaultSpace),

        /// -- Item in Cart
        child: MCartItems(),
      ),

      /// -- Bottom Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout \$1875.0')),
      ),
    );
  }
}
