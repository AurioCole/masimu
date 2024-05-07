import 'package:flutter/material.dart';
import 'package:masimu_app/utils/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF39B54A),
        fontFamily: "Poppins"
      ), 
      routerDelegate: routes.routerDelegate,
      routeInformationParser: routes.routeInformationParser, 
      routeInformationProvider: routes.routeInformationProvider,       
    );
  }
}
