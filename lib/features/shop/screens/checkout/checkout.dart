import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/common/widgets/success_screen/success_screen.dart';
import 'package:m_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:m_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:m_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:m_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:m_store/navigation_menu.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Item in Cart
              const MCartItems(showAddRemoveButtons: false),
              const SizedBox(height: MSizes.spaceBtwSections),

              /// -- Coupon TextField
              const MCouponCode(),
              const SizedBox(height: MSizes.spaceBtwSections),

              /// -- Billing Section
              MRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MSizes.md),
                backgroundColor: dark ? MColors.black : MColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    MBillingAmountSection(),
                    SizedBox(height: MSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: MSizes.spaceBtwItems),

                    /// Payment Method
                    MBillingPaymentSection(),
                    SizedBox(height: MSizes.spaceBtwItems),

                    /// Address
                    MBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// -- Bottom Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: MImage.successfullPaymentIcon,
                  title: 'Payment Success!',
                  subTitle: 'Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$1889.0')),
      ),
    );
  }
}
