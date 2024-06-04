import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zulfaniz_store/common/widgets/success_screen/success_screen.dart';
import 'package:zulfaniz_store/features/authentication/screens/login/login.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/constants/sizes.dart';
import 'package:zulfaniz_store/utils/helpers/helper_functions.dart';

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
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Padding a give default equal space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(TImages.verifyEmailImage),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Title and Subtitle
              Text(
                "Verify your email address !",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "hisyamabilkhoir@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "Pesan verifikasi telah dikirimkan pada email anda, silahkan cek email anda untuk melanjutkan pendaftaran",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: TImages.successImage,
                      title: "Berhasil Verifikasi Email !",
                      subTitle: "Silahkan anda bisa mulai login",
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
