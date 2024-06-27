import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:zulfaniz_store/common/widgets/success_screen/success_screen.dart';
import 'package:zulfaniz_store/data/repositories/authentication.repository.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/constants/text_strings.dart';
import 'package:zulfaniz_store/utils/loaders/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  // Send email whenever Verirfy screen appears & set timer for auto redirect.
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // Send Email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.errorSnackBar(
          title: 'Email Sent',
          message: 'Please check your inbox and verify your email.');
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  // Timer to automatically redirect on Email Verification
  setTimerForAutoRedirect() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) async {
        await FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          timer.cancel();
          Get.off(() => SuccessScreen(
                image: TImages.successfullyRegistrationAnimation,
                title: TTexts.yourAccountCreatedTitle,
                subTitle: TTexts.yourAccountCreatedSubtitle,
                onPressed: () =>
                    AuthenticationRepository.instance.screenRedirect(),
              ));
        }
      },
    );
  }

  // Manually check if email verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(() => SuccessScreen(
            image: TImages.successfullyRegistrationAnimation,
            title: TTexts.yourAccountCreatedTitle,
            subTitle: TTexts.yourAccountCreatedSubtitle,
            onPressed: AuthenticationRepository.instance.screenRedirect,
          ));
    }
  }
}
