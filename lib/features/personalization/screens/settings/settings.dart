import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:m_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/features/personalization/screens/address/address.dart';
import 'package:m_store/features/personalization/screens/profile/profile.dart';
import 'package:m_store/features/shop/screens/order/order.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../shop/screens/cart/cart.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// App Bar
                  MAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: MColors.white),
                    ),
                  ),

                  /// User Profile Card
                  MUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: MSizes.spaceBtwSections),
                ],
              ),
            ),

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(MSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const MSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(height: MSizes.spaceBtwItems),

                  MSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add, remove product and move to checkout",
                    onTap: () => Get.to(() => const CartScreen()),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In-Progress and Completed Orders",
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons",
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification message",
                  ),
                  const MSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                  ),

                  /// App Settings
                  const SizedBox(height: MSizes.spaceBtwSections),
                  const MSectionHeading(
                      title: "App Settings", showActionButton: false),
                  const SizedBox(height: MSizes.spaceBtwItems),
                  const MSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: "Load Data",
                      subTitle: "Upload Data to your Cloud Firebase"),
                  MSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subTitle: "Get recommendation base on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  MSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set imagfe quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// Logout Button
                  const SizedBox(height: MSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  ),
                  const SizedBox(height: MSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
