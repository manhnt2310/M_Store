import 'package:flutter/material.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MLoginHeader extends StatelessWidget {
  const MLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? MImage.lightAppLogo : MImage.darkAppLogo),
        ),
        Text(
          MTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: MSizes.sm,
        ),
        Text(
          MTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
