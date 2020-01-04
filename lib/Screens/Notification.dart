import 'package:newsapp/Screens/Newsfeedswipe.dart';
import 'package:flutter/material.dart';

class Notification extends StatefulWidget
{
  static String tag='Notification';
  _Notification createState()=> _Notification();
}
class _Notification extends State<Notification>
{
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");
  Widget build (BuildContext context)
  {
  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Notification',style: TextStyle(color: Colors.lightBlue)),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.lightBlue),
        )
      ),
       backgroundColor: Colors.white,
       body: Container(
      width: width,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {final item=items[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (direction){
            setState(() {
              items.removeAt(index);
            });
            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Notification deleted'),));
          },
          background: Container(
            color: Colors.red,
            
          ),
          child: InkWell(
            onTap: (){
            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Newsfeedswipe()));
            },

            child: Container(
               margin: EdgeInsets.only(top:10,bottom: 10,left: 15),
              width: 380,
              height: 80,
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
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                     // boxShadow: [BoxShadow(color: Colors.blueGrey,blurRadius: 2)]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.notifications,color:Colors.blueGrey,size: 32,),
                          ],
                        )
                      ],
                    )
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
                          padding: EdgeInsets.only(top: 8),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0XFF23ade3)),),
                          
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 8),
                          child: Text('headline news,headline news,headline news',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.green,)),

                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          padding: EdgeInsets.only(top: 10),
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
                          padding: EdgeInsets.only(left:50,top: 10,right: 10,bottom: 5),
                          child: Icon(Icons.bookmark,color:Colors.blue),
                        )
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left:50,top: 20,right: 10,bottom: 5),
                          child:Text('3 days ago',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300,color: Color(0XFF23ade3)))
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            ),
          )
        );
        },

      ),
    ),
    );
    
    
  }
}