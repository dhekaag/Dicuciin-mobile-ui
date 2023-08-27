import 'package:dicuciin_2/firebase_options.dart';
import 'package:dicuciin_2/src/features/authentication/screens/explore/explore.dart';
import 'package:dicuciin_2/src/features/authentication/screens/home/home.dart';
import 'package:dicuciin_2/src/features/authentication/screens/login/login.dart';
import 'package:dicuciin_2/src/features/authentication/screens/splash/splash.dart';
import 'package:dicuciin_2/src/repository/authentication_repository/authentication_repository.dart';
import 'package:dicuciin_2/src/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Dicuci.in',
        theme: TappTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}
