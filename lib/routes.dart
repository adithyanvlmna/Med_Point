import 'package:flutter/material.dart';
import 'package:med_point/view/home_view.dart';
import 'package:med_point/view/login_view.dart';
import 'package:med_point/view/register_view.dart';
import 'package:med_point/view/splash_view.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LoginView.routeName: (ctx) => LoginView(),
  HomeView.routeName: (ctx) => HomeView(),
  RegisterView.routeName: (ctx) => RegisterView(),
  SplashView.routeName: (ctx) => SplashView()
};
