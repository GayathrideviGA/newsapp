import 'package:newsapp/Screens/Feedback.dart' as prefix0;
import 'package:newsapp/Screens/Language.dart';
import 'package:newsapp/Screens/Notification.dart' as prefix0;
import 'package:newsapp/Widgets.dart/Privacy.dart';
import 'package:newsapp/Widgets.dart/Termsconditions.dart';
import 'package:flutter/material.dart';
import 'package:simple_share/simple_share.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';





class Settings extends StatefulWidget {
  static String tag = 'Settings';
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  _launchURL() async {
  const url = 'https://play.google.com/store/apps/details?id=com.nextontop.casttreenews&hl=en';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

 Future<String> getFilePath() async {
    try {
      String filePath = await FilePicker.getFilePath(type: FileType.ANY);
      if (filePath == '') {
        return "";
      }
      print("File path: " + filePath);
      return filePath;
    } on PlatformException catch (e) {
      print("Error while picking the file: " + e.toString());
      return null;
    }
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Color(0XFF23ade3)),
          ),
          title: Text(
            'Settings',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0XFF23ade3)),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Language()));
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 30,left: 20),
                      child:Text(
            'Preferences',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(top: 20,left: 20),
                      child:Text(
            'Notifications',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                        ],
                      ),
                      Column
                      (
                        children: <Widget>
                        [
                          
                          Padding(padding: EdgeInsets.only(top: 20,left: 220),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                                IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>prefix0.Notification()));
                                },
                                icon: Icon(Icons.notifications,color:Colors.blueGrey),)
                          ],))
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 20,left: 20),
                      child:Text(
            'More',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(top: 20,left: 20),
                      child:Text(
            'Share this app',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                        ],
                      ),
                      Column
                      (
                        children: <Widget>
                        [
                          
                          Padding(padding: EdgeInsets.only(top: 20,left: 210),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                                IconButton(onPressed: (){SimpleShare.share(
                  
                  msg:
                      "dummy msg",
                );
                },icon: Icon(Icons.arrow_forward_ios,color:Colors.blueGrey),)
                          ],))
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(top: 20,left: 20),
                      child:Text(
            'Rate this app',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                        ],
                      ),
                      Column
                      (
                        children: <Widget>
                        [
                          
                          Padding(padding: EdgeInsets.only(top: 20,left: 220),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                                IconButton(onPressed: (){
                                  _launchURL();
                                },icon: Icon(Icons.arrow_forward_ios,color:Colors.blueGrey),)
                          ],))
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                  },
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(top: 20,left: 20),
                      child:Text(
            'Feedback',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                        ],
                      ),
                      Column
                      (
                        children: <Widget>
                        [
                          
                          Padding(padding: EdgeInsets.only(top: 20,left: 245),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                                IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>prefix0.Feedback()));

                                },icon: Icon(Icons.arrow_forward_ios,color:Colors.blueGrey),)
                          ],))
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(top: 20,left: 20),
                      child:Text(
            'Terms and Conditions',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                        ],
                      ),
                      Column
                      (
                        children: <Widget>
                        [
                          
                          Padding(padding: EdgeInsets.only(top: 20,left: 160),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                                IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Termsconditions()));
                                },icon: Icon(Icons.arrow_forward_ios,color:Colors.blueGrey),)
                          ],))
                        ],
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>
                        [
                          Padding(padding: EdgeInsets.only(top: 20,left: 20),
                      child:Text(
            'Privacy',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey,
          ),),)
                        ],
                      ),
                      Column
                      (
                        children: <Widget>
                        [
                          
                          Padding(padding: EdgeInsets.only(top: 20,left: 265),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                                IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy()));
                                },icon: Icon(Icons.arrow_forward_ios,color:Colors.blueGrey),)
                          ],))
                        ],
                      )
                    ],
                  ),
                ),


              ],
            )
          ],
        ));
  }
}
