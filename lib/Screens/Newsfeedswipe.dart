import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;
import 'package:newsapp/Screens/Bookmark.dart';
import 'package:simple_share/simple_share.dart';
import 'package:url_launcher/url_launcher.dart';

class Newsfeedswipe extends StatefulWidget {
  final String headernewsswipe;
  final String descriptorswipe;
  final String authorNameswipe;
  final String timingswipe;
  final String mainImageswipe;

  // In the constructor, require a Todo.
  Newsfeedswipe(
      {Key key,
      @required this.headernewsswipe,
      this.descriptorswipe,
      this.authorNameswipe,
      this.timingswipe,
      this.mainImageswipe});
  _Newsfeedswipe createState() => _Newsfeedswipe();
}

class _Newsfeedswipe extends State<Newsfeedswipe> {
  _launchURL() async {
    const url =
        'https://timesofindia.indiatimes.com/entertainment/tamil/movies/news/thala-ajiths-dual-getup-for-valimai/articleshow/72154793.cms';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
final String url="https://api.myjson.com/bins/xl6qs";
  List data;
  
  List<dynamic> latestnews; 
  @override
  void initState(){
    this.getData();

  }
  Future<String> getData() async
  {
    var response = await http.get(Uri.encodeFull(url),headers: {"ACCEPT":"application/json"});
    setState(() {
      var convertDataToJson=json.decode(response.body);
       data= convertDataToJson['news'];
       latestnews= convertDataToJson['news'][0]['latestnews'];
    
    });
    return "success";
  } 
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        new Swiper(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Scaffold(
              body: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                              width: width,
                              height: height / 2.8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(latestnews[index]['newsimage']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, left: 10),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.arrow_back_ios,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, right: 10),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.bookmark,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Bookmark()));
                                                },
                                              ))
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding:
                                EdgeInsets.only(top: 20, left: 20, bottom: 10),
                            width: width / 1.2,
                            child: Text(latestnews[index]['headline'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, right: 10),
                            child: IconButton(
                              onPressed: () {
                                SimpleShare.share(
                                  msg: "dummy msg",
                                );
                              },
                              icon: Icon(Icons.share),
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 5, left: 25),
                            child: Text(latestnews[index]['author'],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, right: 25),
                            child: Text(latestnews[index]['timeline'],
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.green)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            width: width / 1.15,
                            // height: 200,
                            child: Text(
                              latestnews[index]['description'],
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.8),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              _launchURL();
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20, right: 30),
                              width: 100,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Colors.lightBlue.withOpacity(0.5),
                                        blurRadius: 2)
                                  ],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Read more',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.lightBlue))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: 3,
          //pagination: new SwiperPagination(),
          // control: new SwiperControl(),
        )
      ],
    ));
  }
}
