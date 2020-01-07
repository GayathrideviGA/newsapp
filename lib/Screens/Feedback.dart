import 'package:newsapp/Screens/emptystate/Feedbacknotify.dart';
import 'package:flutter/material.dart';

class Feedbackpage extends StatefulWidget
{
  static String tag='Feedbackpage';
  @override
  _FeedbackpageState createState() => _FeedbackpageState();
} 

class _FeedbackpageState extends State<Feedbackpage>
{
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Color(0xff4181ee)),
          ),
          title: Text(
            'Feedback',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff4181ee)),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(20),child: Text('Suggest your points to make this application\nmore better',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.blueGrey)),)

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/Feedback.gif'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 250,left: 50),
                  child: Form(
                    key: formKey,
                    child:Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: new InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'Name',
                            hintText: 'Enter your name',
                            border: InputBorder.none
                          ),
                        ),
                        TextFormField(
                          decoration: new InputDecoration(
                            icon: Icon(Icons.mail),
                            labelText: 'Mail',
                            hintText: 'Enter your mail id',
                            border: InputBorder.none
                          ),
                          
                        ),
                        TextFormField(
                          decoration: new InputDecoration(
                            icon: Icon(Icons.feedback),
                            labelText: 'Feedback',
                            hintText: 'Enter your Feedback here',
                            border: InputBorder.none
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 50,bottom: 10),child: new Material(
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: Colors.blue[300],
                          elevation: 5,
                          child: MaterialButton(
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                            minWidth: 200,
                            height: 50,
                            color:Color(0xff4181ee).withOpacity(0.9),
                            child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Feedbacknotify()));
                            },

                          ),
                        )),
                      ],
                    )
                  ),
                ),
              ],
            )
          ],
        ),
        )
    );
  }
}