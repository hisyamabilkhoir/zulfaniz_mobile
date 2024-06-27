import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zulfaniz_store/data/repositories/authentication.repository.dart';
import 'package:zulfaniz_store/data/user/user_repository.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/verify_email.dart';
import 'package:zulfaniz_store/features/personalization/models/user_model.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/helpers/network_manager.dart';
import 'package:zulfaniz_store/utils/loaders/loaders.dart';
import 'package:zulfaniz_store/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // variables
  final hidePassword = true.obs; // observable for hiding/showing password
  final privacyPolicy = true.obs; // observable for privacy policy password
  final email = TextEditingController(); //controller for email input
  final lastName = TextEditingController(); //controller for last name input
  final username = TextEditingController(); //controller for username input
  final password = TextEditingController(); //controller for password input
  final firstName = TextEditingController(); //controller for first name input
  final phoneNumber =
      TextEditingController(); //controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // SIGNUP
  void signup() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog(
          'We are proccessing your information...', TImages.loadImage);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account, you must have to read and accept the privacy policy & Term of use',
        );
      }

      // Register user in firebase Authentication & save user data in the firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Authenticated user data in the firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // show success message
      TLoaders.successSnackBar(
          title: 'Conratulations',
          message: 'Your account has been created! Verify email to continue.');

      // move the verify email screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      // show some generic error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
