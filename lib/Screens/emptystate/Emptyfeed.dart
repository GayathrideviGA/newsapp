import 'package:flutter/material.dart';

class Emptyfeed extends StatefulWidget
{
  static String tag = 'Emptyfeed';
  @override
  _EmptyfeedState createState() => _EmptyfeedState();
}

class _EmptyfeedState extends State<Emptyfeed>{
  
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
                   image: AssetImage('assets/news.png'),
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
              Text('Your search result not found',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.blueGrey),)
            ],
         )
       ],
     ),
    );
  }
}