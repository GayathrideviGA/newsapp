import 'package:newsapp/Screens/Homescreen.dart';
import 'package:newsapp/Screens/Walkthrough.dart';

import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';

final routes = <String, WidgetBuilder>{
   Walkthrough.tag: (context) => Walkthrough(),
   Homescreen.tag: (context)   => Homescreen(),
   
  };


void main() => runApp(
  new MaterialApp(
  debugShowCheckedModeBanner: false,
     home: AnimatedSplash(
            imagePath: 'assets/logonews.png',
              home: Walkthrough(),
            duration: 2500,
            type: AnimatedSplashType.StaticDuration,
           ),
    routes: routes),
    );
