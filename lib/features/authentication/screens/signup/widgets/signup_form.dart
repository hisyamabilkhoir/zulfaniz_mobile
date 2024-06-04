import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/verify_email.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';

import '../../../../../utils/constants/sizes.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // First name and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: "First Name",
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: "Last Name",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: "Username",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: "Email",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: "Phone Number",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Term & Condition checkbox
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Button Regist
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text("Registrasi"),
            ),
          ),
        ],
      ),
    );
  }
}
