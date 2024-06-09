import 'package:flutter/material.dart';

import 'src/features/auth/screens/auth_screen.dart';
import 'src/utils/app_init.dart';

void main() async {
  await AppInitialization().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.blueGrey,
          onPrimary: Colors.lightBlueAccent,
          secondary: Colors.white,
          onSecondary: Colors.grey,
          error: Colors.red,
          onError: Colors.redAccent,
          background: Colors.black,
          onBackground: Colors.black54,
          surface: Colors.lightBlue,
          onSurface: Colors.blueAccent,
        ),
      ),
      home: AuthScreen(),
    );
  }
}
