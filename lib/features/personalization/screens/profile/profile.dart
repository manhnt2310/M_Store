import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/appbar/appbar.dart';
import 'package:m_store/common/widgets/images/m_circular_image.dart';
import 'package:m_store/common/widgets/texts/section_heading.dart';
import 'package:m_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:m_store/utils/constants/image_strings.dart';
import 'package:m_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MCircularImage(
                        image: MImage.user, width: 80, height: 80),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    )
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: MSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MSizes.spaceBtwItems),
              const MSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: MSizes.spaceBtwItems),

              MProfileMenu(
                  onPressed: () {}, title: 'Name', value: 'Manh Nguyen'),
              MProfileMenu(
                  onPressed: () {}, title: 'Username', value: 'manh_nguyen'),

              const SizedBox(height: MSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: MSizes.spaceBtwItems),

              /// Heading Personal Info
              const MSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: MSizes.spaceBtwItems),

              MProfileMenu(
                  onPressed: () {},
                  title: 'User ID',
                  value: '01234',
                  icon: Iconsax.copy),
              MProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: 'manhnt0123@gmail.com'),
              MProfileMenu(
                  onPressed: () {}, title: 'Phone Number', value: '0123456789'),
              MProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              MProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '23 Oct, 2003',
              ),
              const Divider(),
              const SizedBox(height: MSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account',
                      style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
