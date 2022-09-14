import 'package:custom_inherited_widget_example/home/home_page.dart';
import 'package:custom_inherited_widget_example/model/user_model.dart';
import 'package:custom_inherited_widget_example/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Lucas Beraldo',
      child: MaterialApp(
        title: 'Flutter InheritWidget Demo',
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
