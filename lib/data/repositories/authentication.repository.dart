import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zulfaniz_store/features/authentication/screens/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:zulfaniz_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:zulfaniz_store/features/authentication/screens/signup/verify_email.dart';
import 'package:zulfaniz_store/navigation_menu.dart';
import 'package:zulfaniz_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:zulfaniz_store/utils/exceptions/firebsase_exception.dart';
import 'package:zulfaniz_store/utils/exceptions/format_exception.dart';
import 'package:zulfaniz_store/utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  //called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //function to show relevan screen
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    } else {
      // Check if it's the first time launching the app
      deviceStorage.writeIfNull('isFirstTime', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => const OnBoardingScreen());
    }
    // local storage
  }
  /*------------------------------ Email & password sign-in --------------------------- */

  // [EmailAuthentication] - SignIn
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // [ReAuthenticate] - ReAuthenticate user

  // [EmailVerivication] - Mail Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please Try again';
    }
  }

  // [EmailVerivication] - FORGET PASSWORD

  /*------------------------------ Federated identity & social sign-in --------------------------- */

  // [googleAuthentication] = GOOGLE

  // [facebookAuthentication] = FACEBOOK

  /*------------------------------  ./end Federated identity & social sign-in --------------------------- */

  // [logoutUser] - valid for any authentication
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please Try again';
    }
  }

  // DELETE USER - Remove user auth and firestore user
}
