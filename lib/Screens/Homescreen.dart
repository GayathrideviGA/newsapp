import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:newsapp/Categories.dart';
import 'package:newsapp/Screens/Bookmarkdismiss.dart';
import 'package:newsapp/Screens/Feeds.dart';
import 'package:newsapp/Screens/Settings.dart';

class Homescreen extends StatefulWidget {
  static String tag = 'Homescreen';
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
  TabController _tabcontroller;
  var currentPage = 0;
  var isPageCanChanged = true;
  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
           Column(
             children: <Widget>[
                Row(
              children: <Widget>[
                Container(
                  width: width,
                  height: height/14,
                  color: Colors.white,
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(top: 5,left: 10,right: 20,bottom: 10),
                 child: IconButton(
                   icon: Icon(Icons.settings,color:Color(0xFF4181ee)),
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                   },
                 ),
               ),
                Padding(
                 padding: EdgeInsets.only(top: 5,left: 30,right: 20,bottom: 10),
                 child: GradientText(
                   'News App',
                   gradient:LinearGradient(colors: [Color(0xFF4181ee),Color(0xFF48f5f7)],
                   ),
                   style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),
                 )
               ),
                Padding(
                 padding: EdgeInsets.only(top: 5,left: 30,right: 10,bottom: 10),
                 child: IconButton(
                   icon: Icon(Icons.search,color:Color(0xFF4181ee)),
                   onPressed: (){},
                 ),
               )
              ],
            ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: width,
                  height: height-(height/14),
                  child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        
                        resizeToAvoidBottomPadding: false,
                         appBar: PreferredSize(
                                      preferredSize: Size.fromHeight(50.0),
                                      child: AppBar(
                                        elevation: 0,
                                          backgroundColor: Colors.white,
                                          bottom: TabBar(
                                            controller: _tabcontroller,
                                            tabs: <Tab>[
                                              new Tab(
                                                child:  Text(
                                                      'Discover',
                                                      style: TextStyle(
                                                          color: Color(0xFF4181ee),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )
                                              ),
                                              new Tab(
                                                child:  Text(
                                                      'Feeds',
                                                      style: TextStyle(
                                                          color: Color(0xFF4181ee),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )
                                              ),
                                              new Tab(
                                                child: Text(
                                                      'Bookmarks',
                                                      style: TextStyle(
                                                          color: Color(0xFF4181ee),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )
                                              ),
                                            ],
                                            indicator:UnderlineTabIndicator(
                                              insets: EdgeInsets.symmetric(horizontal: 30),
                                              borderSide: BorderSide(
                                                width: 2,
                                                color: Color(0xFF48f5f7),
                                              )
                                            )
                                          ))),
                                          body: TabBarView(
                                            controller: _tabcontroller,
                                            children: <Widget>[
                                              Container(
                                                width: width,
                                                color: Colors.white,
                                                child: Categories(),
                                              ),
                                               Container(
                                                width: width,
                                                color: Colors.white,
                                                child: Feeds(),
                                              ),
                                               Container(
                                                width: width,
                                                color: Colors.white,
                                                child: Bookmarkdismiss(),
                                              )
                                            ],
                                          ),
                      ),
                    ),
                  ),
                )
              ],
            )
             ],
           )
          ],
        ),
      ),
    ),
    );
  }
}
