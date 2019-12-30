import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class Language extends StatefulWidget
{
  static String tag='Language';
  @override
  _LanguageState createState() => _LanguageState();
  }
  
  class _LanguageState extends State<Language> 
  {
      Widget build (BuildContext context)
      {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(

                    width: 300,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.lightBlue,blurRadius: 2)]
                    ),

                    child: Column(
                      children: <Widget>[
                        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),child: GradientText(
                    "Choose your preferred language",
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.green],
                    ),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  )
                  
                ],
              ), 
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('English',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Tamil',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Telugu',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Bengali',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Urdu',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            )
                            
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Hindi',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Malayalam',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Kannada',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Marathi',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                              child: Chip(
                              label: Text('Gujarathi',style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.lightBlue,
                            ),
                            )

                          ],
                        )
                      ],
                    ),
                      ],
                    )
                  )
                ],
              )
            ],
          ),
        );
      }

  }