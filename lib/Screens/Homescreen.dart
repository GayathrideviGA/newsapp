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
                  height: height/12,
                  color: Colors.white,
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 10),
                 child: IconButton(
                   icon: Icon(Icons.settings,color:Colors.lightBlue),
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                   },
                 ),
               ),
                Padding(
                 padding: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 10),
                 child: GradientText(
                   'Casttree News',
                   gradient:LinearGradient(colors: [Colors.lightBlue,Colors.green,Colors.green[400]],
                   ),
                   style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),
                 )
               ),
                Padding(
                 padding: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 10),
                 child: IconButton(
                   icon: Icon(Icons.search,color:Colors.lightBlue),
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
                  height: height-height/12,
                  child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        
                        resizeToAvoidBottomPadding: false,
                         appBar: PreferredSize(
                                      preferredSize: Size.fromHeight(50.0),
                                      child: AppBar(
                                          backgroundColor: Colors.white,
                                          bottom: TabBar(
                                            controller: _tabcontroller,
                                            tabs: <Tab>[
                                              new Tab(
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 5.0),
                                                    child: Text(
                                                      'Discover',
                                                      style: TextStyle(
                                                          color: Colors.lightBlue,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )),
                                              ),
                                              new Tab(
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 5.0),
                                                    child: Text(
                                                      'Feeds',
                                                      style: TextStyle(
                                                          color: Colors.lightBlue,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )),
                                              ),
                                              new Tab(
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 5.0),
                                                    child: Text(
                                                      'Bookmarks',
                                                      style: TextStyle(
                                                          color: Colors.lightBlue,
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily:
                                                              'Canterbury'),
                                                    )),
                                              ),
                                            ],
                                            indicatorColor: Colors.lightGreen,
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
