import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:med_point/controller/login_provider.dart';
import 'package:med_point/routes.dart';
import 'package:med_point/view/login_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx)=>LoginProvider())
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ConnectivityAppWrapper(
      app: MaterialApp(
        title: 'Med Point',
       debugShowCheckedModeBanner: false,
       initialRoute: LoginView.routeName,
      routes: routes,
      ),
    );
  }
}
