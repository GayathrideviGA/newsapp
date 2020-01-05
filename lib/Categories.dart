import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:http/http.dart' as http;

class Categories extends StatefulWidget {
  static String tag = 'Categories';
   final String regionimage;
  final String region;
  final String actorimage;
  final String actorname;
  final String launches;
  Categories({this.regionimage,this.region,this.actorimage,this.actorname,this.launches});
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  final String url="https://api.myjson.com/bins/r34tg";
  List data;
  List<dynamic> regional;
  List<dynamic> actor; 
  List<dynamic> intrest;
  @override
  void initState(){
    this.getData();

  }
  Future<String> getData() async
  {
    var response = await http.get(Uri.encodeFull(url),headers: {"ACCEPT":"application/json"});
    setState(() {
      var convertDataToJson=json.decode(response.body);
       data= convertDataToJson['categories'];
      
         regional= convertDataToJson['categories'][0]['regional'];

        actor= convertDataToJson['categories'][0]['actor'];
        intrest= convertDataToJson['categories'][0]['intrest'];

    });
    return "success";
  } 

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: GradientText(
                    "Which region do you wish to explore ?",
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.green],
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>
              [
                Container(
                  width: width,
                  height: 150,
                  color: Colors.white60,
                  child: ListView.builder(
                    itemCount: regional.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int index)
                    {
                      return Container(
                        margin: EdgeInsets.only(
                            top: 10, left: 20, bottom: 10, right: 10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(regional[index]['regionimage']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(regional[index]['region'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                      
                    }
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: GradientText(
                    "Actor and Actresses",
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.green],
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: width,
                  height: 100,
                  child: ListView.builder(
                    itemCount: actor.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index)
                    {
                     return Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 10, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(actor[index]['actorimage']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.withOpacity(0.9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(actor[index]['actorname'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    } 
                    
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: GradientText(
                    "Intrested to find ",
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.green],
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Column(
                     
                      children: <Widget>[
                        InkWell(
                          onTap: (){},
                          child: Container(
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             colors: [Colors.lightGreen[500],Colors.lightGreen[400],Colors.lightGreen[300],Colors.lightGreen[200],]
                           ),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                    Text('Audio\nlaunches',
                                         textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                               ],
                             )
                           ],
                         ),
                        ),
                        )
                      ],
                    ),
                    Column(
                      
                      children: <Widget>[
                       InkWell(
                         onTap: (){},
                         child:  Container(
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             colors: [Colors.blue[500],Colors.blue[400],Colors.blue[300],Colors.blue[200],]
                           ),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                    Text('Audio\nlaunches',
                                         textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                               ],
                             )
                           ],
                         ),
                        ),
                       )
                      ],
                    ),

                 Column(
                     
                      children: <Widget>[
                        InkWell(
                          onTap: (){},
                          child: Container(
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             colors: [Colors.purple[500],Colors.purple[400],Colors.purple[300],Colors.purple[200],]
                           ),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                    Text('Audio\nlaunches',
                                         textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                               ],
                             )
                           ],
                         ),
                        ),
                        )
                      ],
                    ),
              ],
            ),
             
          ],
        )
      ],
    ),
        )
        );
  }
}
