import 'package:flutter/material.dart';

class Offline extends StatefulWidget
{
  static String tag = 'Offline';
  @override
  _OfflineState createState() => _OfflineState();
}

class _OfflineState extends State<Offline>{
  
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: Column
     (
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>
       [
         Row
         (
           mainAxisAlignment: MainAxisAlignment.center,

           children: <Widget>
           [
             Container
             (
               width: 150,
               height: 150,
               margin: EdgeInsets.all(20),
               decoration:  BoxDecoration
               (
                 image: DecorationImage
                 (
                   image: AssetImage('assets/offline.png'),
                   fit: BoxFit.cover
                 ),

                 
               )
             )


           ],
           
         ),
         Row
         (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
              Text('You are not connected to internet',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.blueGrey),)
            ],
         )
       ],
     ),
    );
  }
}