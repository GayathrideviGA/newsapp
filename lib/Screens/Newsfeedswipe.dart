import 'package:flutter/material.dart';

class Newsfeedswipe extends StatefulWidget
{
  static String tag='Newsfeedswipe';
  _Newsfeedswipe createState()=> _Newsfeedswipe();
} 

class _Newsfeedswipe extends State<Newsfeedswipe>
{
  Widget build (BuildContext context)
  {
    return Scaffold(
      body:Stack(
        children: <Widget>[
        /*  new Swiper(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
          return new Newsdescription();
        },
        itemCount: 3,
        //pagination: new SwiperPagination(),
       // control: new SwiperControl(),
          )*/
        ],
      )
    );
  }
}