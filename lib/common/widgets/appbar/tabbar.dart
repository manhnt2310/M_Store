import 'package:flutter/material.dart';
import 'package:m_store/utils/device/device_utility.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class MTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSized] widget and that's why create custom class. [PreferredSizedWidget]
  const MTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MColors.black : MColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: MColors.primary,
        labelColor: dark ? MColors.white : MColors.primary,
        unselectedLabelColor: MColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}
