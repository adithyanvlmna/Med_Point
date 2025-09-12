// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:med_point/core/utils/app_size.dart';
import 'package:med_point/view/home_view.dart';
import 'package:med_point/view/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splashView";
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateFromSplash();
  }

  Future<void> _navigateFromSplash() async {
    try {
      
      await Future.delayed(Duration(seconds: 3));
 
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString("token");

      print("Retrieved token: $token");

      if (!mounted) return; 

    
      if (token != null && token.isNotEmpty) {
        Navigator.pushReplacementNamed(context, HomeView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      }
    } catch (e) {
      print("Error in splash navigation: $e");
      if (mounted) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight(context, 1),
        width: screenWidth(context, 1),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
