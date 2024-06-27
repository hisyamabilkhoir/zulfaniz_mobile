import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zulfaniz_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/verify_email.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:zulfaniz_store/utils/validators/validation.dart';

import '../../../../../utils/constants/sizes.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          // First name and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText('First Name', value),
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
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText('Last Name', value),
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
            controller: controller.username,
            validator: (value) =>
                TValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: "Username",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: "Email",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) =>
                TValidator.validatePhoneNumber('Phone Number', value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: "Phone Number",
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Term & Condition checkbox
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          // Button Regist
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text("Registrasi"),
            ),
          ),
        ],
      ),
    );
  }
}
