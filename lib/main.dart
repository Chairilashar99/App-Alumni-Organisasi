import 'package:aplikasi_alumni_organisasi/pages/home/main_page.dart';
import 'package:aplikasi_alumni_organisasi/pages/sign_in_page.dart';
import 'package:aplikasi_alumni_organisasi/pages/sign_up_page.dart';
import 'package:aplikasi_alumni_organisasi/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
