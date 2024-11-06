import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:isolates/screen/HomeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomeScreen(),
        },
      );
}
