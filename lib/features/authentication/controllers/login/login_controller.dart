import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zulfaniz_store/data/repositories/authentication.repository.dart';
import 'package:zulfaniz_store/utils/constants/image_strings.dart';
import 'package:zulfaniz_store/utils/helpers/network_manager.dart';
import 'package:zulfaniz_store/utils/loaders/loaders.dart';
import 'package:zulfaniz_store/utils/popups/full_screen_loader.dart';

class LoginController extends GetxController {
  // variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text = localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
  }

  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog(
          'Loggin you in...', TImages.loadImage);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Save data if remember me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      } else {
        localStorage.write('REMEMBER_ME_EMAIL', '');
        localStorage.write('REMEMBER_ME_PASSWORD', '');
      }

      // Login user using Email & Password Authentication
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
