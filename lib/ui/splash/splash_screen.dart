import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jobcard/ui/utils/app_constants.dart';

class SplashScreen extends StatefulWidget{


  @override
  State createState() {

    return new SplashState();
  }
}

class SplashState extends State<SplashScreen>{


  @override
  void initState() {
    super.initState();
    startDelay();
  }
  @override
  Widget build(BuildContext context){

    return Scaffold(

      body: Container(

        width: double.infinity,
        height: double.infinity,
        color: Colors.purple,
      ),
    );
  }


  startDelay() async{

    var _duration = Duration(milliseconds:AppConstants.SPLASH_DURATION);
      return new Timer(_duration,navigationToStartPage);
  }
  void navigationToStartPage() {
    Navigator.of(context).pushReplacementNamed('/loginScreen');
  }
}