import 'package:flutter/material.dart';
import 'package:newsapp/Screens/Bookmark.dart';
import 'package:simple_share/simple_share.dart';
import 'package:url_launcher/url_launcher.dart';

class Newsdescription extends StatelessWidget {
  final String headernews;
  final String descriptor;
  final String authorName;
  final String timing;
  final String mainImage;
  final String nurl;

  // In the constructor, require a Todo.
  Newsdescription(
      {Key key,
      @required this.headernews,
      this.descriptor,
      this.authorName,
      this.timing,
      this.mainImage,
      this.nurl})
      : super(key: key);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                            image: NetworkImage(mainImage), fit: BoxFit.cover),
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
                                      padding:
                                          EdgeInsets.only(top: 10, left: 10),
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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 10),
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
                    padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
                    width: width / 1.2,
                    child: Text(headernews,
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
                    child: Text(authorName,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.green)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, right: 25),
                    child: Text(timing,
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
                      descriptor,
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
                      _launchURL() async {
                        String url = nurl;
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, right: 30),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.lightBlue.withOpacity(0.5),
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
  }
}
