import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/features/personalization/screens/address/address.dart';

import '../../../../../utils/constants/sizes.dart';

class MBillingAddressSection extends StatelessWidget {
  const MBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MSectionHeading(
            title: 'Shipping Address',
            buttonTitle: 'Change',
            onPressed: () => Get.to(() => const UserAddressScreen())),
        Text('Manh Nguyen', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: MSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: MSizes.spaceBtwItems),
            Text('+012 345 6789',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: MSizes.spaceBtwItems),
            Expanded(
              child: Text(
                '385 LTV, TV, NTL, HN',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            )
          ],
        ),
      ],
    );
  }
}
