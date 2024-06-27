import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zulfaniz_store/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zulfaniz_store/data/repositories/authentication.repository.dart';
import 'package:zulfaniz_store/firebase_options.dart';

Future<void> main() async {
  //widgets binding
  final WidgetsBinding widgetBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // GetX local Storage
  await GetStorage.init();

  //todo: await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  // initialize firebase & authorization repositoring
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp) => Get.put(AuthenticationRepository()),
  );

  //Load all the material design / themes / localization / bindings
  runApp(const App());
}
