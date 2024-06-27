import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zulfaniz_store/bindings/general_bindings.dart';
import 'package:zulfaniz_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:zulfaniz_store/utils/constants/colors.dart';
import 'package:zulfaniz_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      //show loader or circular progress indicator meanwhile authentication repository is deciding to show relevant screen
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
