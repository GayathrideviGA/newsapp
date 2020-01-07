import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:newsapp/Screens/Bookmark.dart';
import 'package:newsapp/Screens/Notification.dart' as prefix0;
import 'package:newsapp/Categories.dart';
import 'package:newsapp/Screens/Feedback.dart';
import 'package:newsapp/Screens/Feeds.dart';
import 'package:newsapp/Widgets.dart/Privacy.dart';
import 'package:newsapp/Widgets.dart/Termsconditions.dart';
import 'package:simple_share/simple_share.dart';

class Homescreen extends StatefulWidget 
{
  static String tag = 'Homescreen';
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin 
{
  TabController _tabcontroller;
  var currentPage = 1;
  var isPageCanChanged = true;

  @override
  void initState() 
  {
    super.initState();
    _tabcontroller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: new Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: 15),
            children: <Widget>[
              ListTile(
                title: Text('Preferences',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                onTap: () {},
              ),
              ListTile(
                title: Text('Bookmarks',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookmark()));
                },
              ),
              ListTile(
                title: Text('Notifications',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                trailing: Icon(Icons.notifications,color: Color(0xff4181ee),),
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>prefix0.Notification()));
                },
              ),
              ListTile(
                title: Text('Share this app',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff4181ee),),
                onTap: () {
                  SimpleShare.share(
                    msg: "dummy msg",
                  );
                },
              ),
              ListTile(
                title: Text('Rate this app',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff4181ee),),
                onTap: () {},
              ),
              ListTile(
                title: Text('Feedback',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff4181ee),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Feedbackpage()));
                },
              ),
              ListTile(
                title: Text('Terms and conditions',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff4181ee),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Termsconditions()));
                },
              ),
              ListTile(
                title: Text('Privacy',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4181ee),
                    )),
                trailing: Icon(Icons.arrow_forward_ios,color: Color(0xff4181ee),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Privacy()));
                },
              )
            ],
          ),
        ),
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
                        height: height / 14,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 5, left: 10, right: 20, bottom: 10),
                              child: IconButton(
                                icon: Icon(Icons.settings,
                                    color: Color(0xFF4181ee)),
                                onPressed: () {
                                  _scaffoldKey.currentState.openDrawer();
                                },
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 5, left: 30, right: 20, bottom: 10),
                                child: GradientText(
                                  'News App',
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF4181ee),
                                      Color(0xFF48f5f7)
                                    ],
                                  ),
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400),
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 5, left: 30, right: 10, bottom: 10),
                              child: IconButton(
                                icon: Icon(Icons.search,
                                    color: Color(0xFF4181ee)),
                                onPressed: () {},
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
                        height: height - (height / 14),
                        child: MaterialApp(
                          debugShowCheckedModeBanner: false,
                          home: DefaultTabController(
                            length: 2,
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
                                                child: Text(
                                              'Discover',
                                              style: TextStyle(
                                                  color: Color(0xFF4181ee),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Canterbury'),
                                            )),
                                            new Tab(
                                                child: Text(
                                              'Feeds',
                                              style: TextStyle(
                                                  color: Color(0xFF4181ee),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Canterbury'),
                                            )),
                                          ],
                                          indicator: UnderlineTabIndicator(
                                              insets: EdgeInsets.symmetric(
                                                  horizontal: 50),
                                              borderSide: BorderSide(
                                                width: 2,
                                                color: Color(0xFF48f5f7),
                                              ))))),
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
