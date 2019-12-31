import 'package:flutter/material.dart';

class Bookmarkempty extends StatefulWidget
{
  static String tag = 'Bookmarkempty';
  @override
  _BookmarkemptyState createState() => _BookmarkemptyState();
}

class _BookmarkemptyState extends State<Bookmarkempty>{
  
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
                   image: AssetImage('assets/Bookmark.png'),
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
              Text('No bookmark found yet',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.blueGrey),)
            ],
         )
       ],
     ),
    );
  }
}