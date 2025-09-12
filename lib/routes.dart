import 'package:flutter/material.dart';
import 'package:med_point/view/home_view.dart';
import 'package:med_point/view/login_view.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LoginView.routeName: (ctx) => LoginView(),
  HomeView.routeName: (ctx) => HomeView()
};
