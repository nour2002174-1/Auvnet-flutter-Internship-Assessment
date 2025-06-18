import 'package:auvnet/features/home/home_view.dart';
import 'package:auvnet/features/splach_screen/widgets/splach_to_home_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyC-T58x6eC9uAIO90p4nZ_7s3SnUGNITD4',
      appId: '1:1068589340797:android:ae65bf3bba8b4747c33914',
      messagingSenderId: '1068589340797',
      projectId: 'auventproject',
    ),
  );

  await Hive.initFlutter();
  await Hive.openBox('userBox'); 

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashToHomeRouter(),
    );
  }
}
