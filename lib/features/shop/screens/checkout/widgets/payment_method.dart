import 'package:flutter/material.dart';
import 'package:m_store/features/shop/screens/checkout/widgets/singly_payment.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';
//import '../../../../../utils/helpers/helper_functions.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text('Payment Method',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              MSinglePayment(),
            ],
          ),
        ),
      ),
    );
  }
}
