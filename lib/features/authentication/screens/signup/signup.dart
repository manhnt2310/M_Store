import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/login_signup/form_divider.dart';
import 'package:m_store/common/widgets/login_signup/social_buttons.dart';
import 'package:m_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.grey
              : Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                MTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),

              // Form
              const MSignupForm(),
              const SizedBox(height: MSizes.spaceBtwSections),

              // Divider
              MFormDivider(dividerText: MTexts.orSignUpWith.capitalize!),
              const SizedBox(height: MSizes.spaceBtwSections),

              // Social Button
              const MSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
