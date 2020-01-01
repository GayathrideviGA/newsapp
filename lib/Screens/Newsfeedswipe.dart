import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:newsapp/Screens/Newsdescription.dart';



class Newsfeedswipe extends StatelessWidget
{

  final String headernewsswipe ;
  final String descriptorswipe ;
  final String authorNameswipe ;
  final String timingswipe ;
  final String mainImageswipe ;

  // In the constructor, require a Todo.
  Newsfeedswipe({Key key, @required this.headernewsswipe,this.descriptorswipe,this.authorNameswipe,this.timingswipe,this.mainImageswipe}) : super(key: key);
 

  Widget build (BuildContext context)
  {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          new Swiper(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
          return new Newsdescription(
            headernews: headernewsswipe,
            descriptor: descriptorswipe,
            authorName: authorNameswipe,
            timing: timingswipe,
            mainImage: mainImageswipe,
          );
        },
        itemCount: 3,
        //pagination: new SwiperPagination(),
       // control: new SwiperControl(),
          )
        ],
      )
    );
  }
}