import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/texts/m_brand_title_text.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../utils/constants/enums.dart';

class MBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const MBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = MColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(height: MSizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: MSizes.iconXs,
        )
      ],
    );
  }
}
