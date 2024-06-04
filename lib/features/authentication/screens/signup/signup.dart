import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/widgets/login_signup/form_divider.dart';
import 'package:zulfaniz_store/common/widgets/login_signup/social_buttons.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text("Mari Buat Akun Baru !",
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Divider
              const TFormDivider(dividerText: "Atau Registrasi Melalui"),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social Button
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
