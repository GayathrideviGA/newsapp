import 'package:flutter/material.dart';

class Feedbacknotify extends StatefulWidget
{
  static String tag = 'Feedbacknotify';
  @override
  _FeedbacknotifyState createState() => _FeedbacknotifyState();
}

class _FeedbacknotifyState extends State<Feedbacknotify>{
  
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
                   image: AssetImage('assets/feedback.png'),
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
              Text('Feedback sent successfully',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.blueGrey),)
            ],
         )
       ],
     ),
    );
  }
}