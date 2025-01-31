import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/features/shop/screens/checkout/widgets/payment_method.dart';
import 'package:m_store/utils/constants/image_strings.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MBillingPaymentSection extends StatelessWidget {
  const MBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () => Get.to(() => const PaymentMethod()),
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),
        Row(
          children: [
            MRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? MColors.light : MColors.white,
              padding: const EdgeInsets.all(MSizes.sm),
              child: const Image(
                image: AssetImage(MImage.applePay),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: MSizes.spaceBtwItems / 2),
            Text('Apple Pay', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
