import 'package:newsapp/Screens/Feedback.dart' as prefix0;
import 'package:newsapp/Screens/Homescreen.dart';
import 'package:newsapp/Screens/Walkthrough.dart';

import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';

final routes = <String, WidgetBuilder>{
   Walkthrough.tag: (context) => Walkthrough(),
   Homescreen.tag: (context)   => Homescreen(),
   prefix0.Feedback.tag:(context)   => prefix0.Feedback(),
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
