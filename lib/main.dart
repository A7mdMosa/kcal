import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/screens/home_screen.dart';
import 'presentation/screens/signup_screen.dart';
import 'presentation/screens/splash_screen.dart';
import 'presentation/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const KcalApp());
}

class KcalApp extends StatelessWidget {
  const KcalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kcal',
        initialRoute: SplashScreen.route,
        routes: {
          SplashScreen.route: (context) => const SplashScreen(),
          WelcomeScreen.route: (context) => const WelcomeScreen(),
          HomeScreen.route: (context) => const HomeScreen(),
          SignUpScreen.route: (context) => SignUpScreen(),
        },
      ),
    );
  }
}
