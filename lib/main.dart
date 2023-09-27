import 'package:flutter/material.dart';

import 'src/screens/home.dart';
import 'src/screens/screen01.dart';
import 'src/screens/screen02.dart';
import 'src/screens/screen03.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/screen01': (context) => const Screen01(),
        '/screen02': (context) => const Screen02(),
        '/screen03': (context) => const Screen03(),
      },
    );
  }
}
