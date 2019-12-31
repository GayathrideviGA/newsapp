import 'package:flutter/material.dart';


class Bookmark extends StatefulWidget
{
  static String tag='Bookmark';
  _BookmarkState createState()=> _BookmarkState();
  }
  
  class _BookmarkState extends State<Bookmark> 
  {
    Widget build  (BuildContext context)
    {
      double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
      return Scaffold(
        body: Container(
          width: width,
          height: height,
          color: Colors.white,

          child:ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          children: <Widget>[
            
            
            
            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),

            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),

            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),

            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),

            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),

            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),
            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),
            Container(
               margin: EdgeInsets.only(top:10,bottom: 10),
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
                        image: AssetImage('assets/act1.png'),
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
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 20),
                          child: Text('By Sam',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),

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
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),
            
          ],
        ),
        ),
      
      );
    }
 }

