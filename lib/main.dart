import 'package:flutter/material.dart';
import 'package:jobcard/ui/home/home_sceen.dart';
import 'package:jobcard/ui/account/login_screen.dart';
import 'package:jobcard/ui/account/register_screen.dart';
import 'package:jobcard/ui/splash/splash_screen.dart';

void main() => runApp(

    MaterialApp(
      title: 'Job Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/loginScreen': (BuildContext context) => new LoginScreen(),
        '/RegisterScreen': (BuildContext context) => new RegisterScreen(),
        '/HomeScreen': (BuildContext context) => new HomeScreen(),
      },
    )
);
