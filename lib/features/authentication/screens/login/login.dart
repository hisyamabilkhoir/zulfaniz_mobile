import 'package:flutter/material.dart';
import 'package:zulfaniz_store/common/styles/spacing_styles.dart';
import 'package:zulfaniz_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:zulfaniz_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title, subTitle
              TLoginHeader(),

              // Form
              TLoginForm(),

              // Divider
              TFormDivider(dividerText: "Atau Masuk Melalui"),
              SizedBox(height: TSizes.spaceBtwSections),

              // Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
