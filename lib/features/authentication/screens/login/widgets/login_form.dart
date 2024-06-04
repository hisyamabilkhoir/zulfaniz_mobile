import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:zulfaniz_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/signup.dart';
import 'package:zulfaniz_store/navigation_menu.dart';

import '../../../../../utils/constants/sizes.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "E-mail",
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            // Remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Ingat saya"),
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text("Lupa password ?"),
                ),
              ],
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            // Sign Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text("Masuk"),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Create Account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text("Buat Akun"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
