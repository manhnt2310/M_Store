import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:m_store/utils/constants/colors.dart';
// import 'package:m_store/utils/theme/theme.dart';
import 'package:m_store/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Init Payment Methods
  // Todo: Await Native Splash
  // Todo: Initialize Firebase

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthentiicaationRepository()));

  // Todo: Initialize Authentication

  // Load all the Material Design / Themes / Localizations / Bindings

  runApp(const App());
}
