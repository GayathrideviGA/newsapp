import 'dart:async';
import 'dart:convert';
import 'package:newsapp/Screens/Newsdescription.dart';
import 'package:newsapp/Screens/Newsfeedswipe.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_offline/flutter_offline.dart';
import 'package:connectivity/connectivity.dart';

class Feeds extends StatefulWidget
{
  static String tag='Feeds';
  final String tsimage;
  final String tsheadline;
  final String headline;
  final String description;
  final String newsimage;
  final String author;
  final String timeline;
  Feeds({this.headline,this.description,this.newsimage,this.author,this.timeline,this.tsimage,this.tsheadline});
  _FeedsState createState()=> _FeedsState();
}

class _FeedsState extends State<Feeds>
{
  final String url="https://api.myjson.com/bins/xl6qs";
  List data;
  List<dynamic> topnews;
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
      
         topnews= convertDataToJson['news'][0]['topstories'];

        latestnews= convertDataToJson['news'][0]['latestnews'];
    
    });
    return "success";
  } 
  Widget build (BuildContext context)
  {
    double width=MediaQuery.of(context).size.width;
      return OfflineBuilder(
        debounceDuration: Duration.zero,
        connectivityBuilder: (
            BuildContext context,
            ConnectivityResult connectivity,
            Widget child,
            ) {
          if (connectivity == ConnectivityResult.none) {
    return Scaffold(
              
              body: 
              Center(child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     Container(
                       width: 200.0,
                       height: 200.0,
                       decoration: new BoxDecoration(
                         color: Colors.transparent,
                         image: DecorationImage(
                           fit: BoxFit.contain,
                           image: new ExactAssetImage('assets/network.gif'),
                         )
                       ),
                       
                     ),
                    ],
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Padding(
                       padding: EdgeInsets.only(top:200.0),
                       child:  Text('Please check your internet connection',style: new TextStyle(
                                fontFamily: 'Nunito-Regular',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),),
                     )
                   ],
                 )
                ],
              )),
            );
          }
          return child;
        },
    child: Container(

    
      child: SafeArea(
         child: SingleChildScrollView(
           child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Text('Top Stories',style:TextStyle(color: Colors.blue,fontSize:16,fontWeight:FontWeight.w500)),
                  )
                ],
              ),

              Row(
                  children: <Widget>[
                    Container(
                  width: width,
                  height: 200,
                  color: Colors.white60,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: topnews.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int index)
                    {
                      return Container(
                        margin: EdgeInsets.only(
                            top: 10, left: 20, bottom: 10, right: 10),
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:NetworkImage(topnews[index]['tsimage']),
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
                                      Text(topnews[index]['tshealine'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  )
                                ],
                              ),
                              )
                              ]
                              )
                            );
                    },
                   
                  ),
                )
                  ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Text('Latest news',style:TextStyle(color: Colors.blue,fontSize:16,fontWeight:FontWeight.w500)),
                  )
                ],
              ),

               Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10,left: 20),
                      child: Text('Dummy text',style:TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.green)),
                    )
                  ],
                ),

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10,left: 209),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>Newsfeedswipe()));
                        },
                        child: Text('View all',style:TextStyle(fontSize: 16,fontWeight:FontWeight.w400,color: Colors.green)),
                      ))
                  ],
                )
              ],
            ),

            Row(
              children: <Widget>[
                Container(
                  //padding: EdgeInsets.only(top: 10),
          width: 390,
          height: 380,
          color: Colors.white,

          child:ListView.builder(
            shrinkWrap: true,
            itemCount: latestnews.length,
            itemBuilder: (BuildContext context, int index){
              return InkWell(
                child:  Container(
              margin: EdgeInsets.only(top: 10,bottom: 10,left: 15,right: 10),
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.blue[300],blurRadius: 2)]
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(latestnews[index]['newsimage']),
                        fit:BoxFit.cover
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                )
                  ],
                ),

                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        
                        Container(
                          
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(latestnews[index]['headline'],overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(latestnews[index]['description'],overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text(latestnews[index]['author'],overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

                        )
                      ],
                    ),

                  ],
                ),

                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left:50,top: 10,right: 10,bottom: 10),
                          child: Icon(Icons.bookmark,color:Colors.blue),
                        )
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left:50,top: 30,right: 10,bottom: 10),
                          child:Text(latestnews[index]['timeline'],style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),
             onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Newsdescription(
                      headernews: latestnews[index]['headline'],
                      descriptor: latestnews[index]['description'],
                      mainImage: latestnews[index]['newsimage'],
                      authorName: latestnews[index]['author'],
                      timing: latestnews[index]['timeline'],
                      ),
                    
                      ));
                },
              );
            },
          )
        ),
              ],
            )


            ],
          )
        ],
      ),
         )
      )
      )
    );

          }    

}
