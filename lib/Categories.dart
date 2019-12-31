import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class Categories extends StatefulWidget {
  static String tag = 'Categories';
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            top: 10, left: 20, bottom: 10, right: 10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/tamil.png'),
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
                                      Text('kollywood',
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
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/malayalam.png'),
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
                                      Text('Malayalam',
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
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/telgu.png'),
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
                                      Text('Tollywood',
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
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/kannada.png'),
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
                                      Text('Sandalwood',
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
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/hindi.png'),
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
                                      Text('Bollywood',
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
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/hollywood.png'),
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
                                      Text('Hollywood',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 10, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/act1.png'),
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
                                      Text('Samantha',
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
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/act2.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 80,
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
                                      Text('Vijay',
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
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/act3.png'),
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
                                      Text('Chaitanya',
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
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/act4.png'),
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
                                      Text('Rajini',
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
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/act5.png'),
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
                                      Text('Trisha',
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
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/act6.png'),
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
                                      Container(
                                        width: 60,
                                        child: Text('Ramya krishnan',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10, top: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/act7.png'),
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
                                      Text('Ajith',
                                          overflow: TextOverflow.ellipsis,
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
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 20, bottom: 10, top: 10, right: 10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/act8.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
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
                                      Text('Jyothika',
                                          overflow: TextOverflow.ellipsis,
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
                      ),
                    ],
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
                         child:  Container(
                          margin: EdgeInsets.all(10),
                          width: 100,
                          height: 100,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             colors: [Colors.lightBlue[800],Colors.lightBlue[600],Colors.lightBlue[400],Colors.lightBlue[200],]
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
                             colors: [Colors.green[800],Colors.green[600],Colors.green[400],Colors.green[200],]
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
                             colors: [Colors.deepPurple[800],Colors.deepPurple[600],Colors.deepPurple[400],Colors.deepPurple[200],]
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
            )
          ],
        )
      ],
    ),
        )
        );
  }
}
