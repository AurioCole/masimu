import 'package:flutter/material.dart';
import 'package:masimu_app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:masimu_app/config/firebase_options.dart';
import 'package:masimu_app/src/viewModel/product_viewmodel.dart';
import 'package:provider/provider.dart';


void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductViewModel(),
      child: const App()
    ),
  );
}