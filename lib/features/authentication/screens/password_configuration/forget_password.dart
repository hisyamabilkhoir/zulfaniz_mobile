import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zulfaniz_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              'Lupa Password',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              'Jangan khawatir',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            // Text Field
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
