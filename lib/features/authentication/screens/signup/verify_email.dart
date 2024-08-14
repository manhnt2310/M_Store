import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/success_screen/success_screen.dart';
import 'package:m_store/features/authentication/screens/login/login.dart';
import 'package:m_store/navigation_menu.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
        // iconTheme: IconThemeData(
        //   color: Theme.of(context).brightness == Brightness.dark
        //       ? Colors.grey
        //       : Colors.black,
        // ),
      ),
      body: SingleChildScrollView(
        // Padding to Give Default Equal Space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(MImage.deliveredEmailIllutation),
                width: MHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),
              // Title & Subtitle
              Text(
                MTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwItems),
              Text(
                'manhnt0123@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwItems),
              Text(
                MTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: MImage.staticSuccessIllutration,
                        title: MTexts.yourAccountCreatedTitle,
                        subTitle: MTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const NavigationMenu()),
                      )),
                  child: const Text(MTexts.mContinue),
                ),
              ),
              const SizedBox(height: MSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(MTexts.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
