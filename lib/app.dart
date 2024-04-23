import 'package:flutter/material.dart';
import 'package:masimu_app/src/view/pages/login.dart';
import 'package:masimu_app/src/view/pages/signUp.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primaryColor: const Color(0xff639655),
        fontFamily: "Poppins"
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup':(context) => const SignUpPage()
      },


    );
  }
}
