import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/whatsapp_home/home_calls/home_calls.dart';
import 'package:whatsappclone/whatsapp_home/home_chats/home_chats.dart';
import 'package:whatsappclone/whatsapp_home/home_chats/popup_menu/setting/settings_page.dart';
import 'package:whatsappclone/whatsapp_home/home_status/home_status.dart';
//import 'home_camera/home_camera.dart';
import 'home_camera/home_camera.dart';
import 'home_chats/popup_menu/new_brodcast.dart';
import 'home_chats/popup_menu/new_group.dart';
import 'home_chats/popup_menu/starred_message.dart';
import 'home_chats/popup_menu/whatsapp_web.dart';
import 'home_status/statusprivacy.dart';

class HomePage extends StatefulWidget {
  //var cameras;
  // final List<CameraDescription> cameras;
  // HomePage({this.cameras});
    @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin{
  //get choice => null;
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(icon: Icon(Icons.camera_alt_rounded),),
    Tab(text:'CHATS'),
    Tab(text:'STATUS'),
    Tab(text:'CALLS'),
  ];

  @override
  void initState() {
    super.initState();
        _controller = TabController(length: list.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
        length: 4,
        child:Scaffold(
        appBar: AppBar(
        bottom: TabBar(
        indicatorColor: Colors.white,
          onTap: (index) {},
          controller: _controller,
          tabs: list,
        ),

            title: Text('WhatsApp'),
           backgroundColor: Colors.teal[800],
            actions: <Widget>[
            new IconButton(icon: Icon(Icons.search), onPressed: (){}),

       (_controller.index == 1)? PopupMenuButton<String>(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem<String>(
                    value: "Newgroup",
                    child: Text("New group"),
                  ),
                  PopupMenuItem<String>(
                    value: "Newbroadcast",
                    child: Text("New broadcast"),
                  ),
                  PopupMenuItem<String>(
                    value: "WhatsAppWeb",
                    child: Text("WhatsApp Web"),
                  ),
                  PopupMenuItem<String>(
                    value: "StarredMessage",
                    child: Text("Starred messages"),
                  ),
                  PopupMenuItem<String>(
                    value: "Settings",
                    child: Text("Settings"),
                  ),
                ],
                 onSelected: (relval){
                  if(relval == "Newgroup"){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Newgroup()));}
                  else if(relval == "Newbroadcast"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Newbrodcast()));}
                  else if(relval == "WhatsAppWeb"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WhatsAppWeb()));}
                  else if(relval == "StarredMessage"){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>StarredMessage()));}
                  else if(relval=="Settings")
                   {Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));}
                  else{}
                 },
              ):Container(),
         (_controller.index==2)?PopupMenuButton(
           icon: Icon(Icons.more_vert),
           itemBuilder: (context)=>[
             PopupMenuItem(
               value: "statusprivacy",
               child: Text('Status privacy'),
             ),
             PopupMenuItem(
               value: 'stasetting',
               child: Text('Setting'),
             ),
           ],
           onSelected: (staval){
             if(staval=='statusprivacy'){Navigator.push(context, MaterialPageRoute(builder: (context)=>statusprivacy()));}
             else if(staval=='stasetting'){Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));}
             else{}
             },
         ):Container(),
              (_controller.index==3)?PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                    value: 'clearlog',
                    child: Text('Clear call log'),
                  ),
                  PopupMenuItem(
                    value: "callsetting",
                    child: Text('Setting'),
                  ),
                ],
                onSelected: (callval){
                  if(callval=='clearlog'){setState(() {
                        showAlertDialog(context);
                      });
                    }
                  else if(callval=='callsetting'){Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));}
                  else{}
                  },
              ):Container(),
            ],
    ),

      body: TabBarView(
        controller: _controller,
         children:
          [
            Whcamera(),//widget.cameras),
            CHATS(),
            STATUS(),
            CALLS(),
        ],
      ),
        ),),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: Text("CANCLE",style: TextStyle(color: Colors.teal[700]),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  Widget cancleButton = FlatButton(
    child: Text("OK",style: TextStyle(color: Colors.teal[700]),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    content: Text("Do you want to clear your entire call log?"),
    actions: [
      okButton,
      cancleButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


