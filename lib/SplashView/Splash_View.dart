import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_design/views/HomeView/Home_View.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const HomeView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    print("I am Build");
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/Logo.jpg",
          height: 150.0,
          width: 150.0,
        ),
      ),
    );
  }
}
