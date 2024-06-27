import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/widgets/loaders/animation_loader.dart';
import '../constants/colors.dart';
import '../helpers/helper_functions.dart';

// A utility class for managing a full-screen loading dialog
class TFullScreenLoader {
  // Open a full screen loading dialog with a given text and animation
  // this method doesn't return anything
  //
  // Parameters:
  //  - text: The text to be displayed in the loading dialog
  //  - animation: the Lottie animation to be shown

  static void openLoadingDialog(String text, String animation) {
    print(animation);
    showDialog(
        context:
            Get.overlayContext!, // Use Get.overlayContext for overlay dialog
        barrierDismissible:
            false, // The dialog can't be dismissed by tapping outside it
        builder: (_) => PopScope(
              canPop: false, // Disable popping with the back button
              child: Container(
                color: THelperFunctions.isDarkMode(Get.context!)
                    ? TColors.dark
                    : TColors.light,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 250),
                    TAnimationsLoaderWidget(
                      text: text,
                      animation: animation,
                    ),
                  ],
                ),
              ),
            ));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!)
        .pop(); //close the dialog using the Navigator
  }
}
