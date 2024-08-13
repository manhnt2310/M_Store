import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:m_store/utils/constants/image_strings.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MSinglePayment extends StatelessWidget {
  const MSinglePayment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.primary.withOpacity(0.3),
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.applePay),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Apple Pay',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Iconsax.tick_circle))
            ],
          ),
        ),
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.lightGrey,
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.creditCard),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Credit Card',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.lightGrey,
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.googlePay),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Google Pay',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.lightGrey,
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.masterCard),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Master Card',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.lightGrey,
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.payPay),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Paypal',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.lightGrey,
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.payStack),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Pay Stack',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.lightGrey,
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.paytm),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Paytm',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        MRoundedContainer(
          padding: const EdgeInsets.all(MSizes.md),
          width: double.infinity,
          showBorder: true,
          backgroundColor: MColors.lightGrey,
          borderColor: dark ? MColors.darkGrey : MColors.grey,
          margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Image(
                        image: AssetImage(MImage.visa),
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Text('Visa',
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
