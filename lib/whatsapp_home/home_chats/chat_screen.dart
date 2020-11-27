import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
//import 'package:chat_bubbles/bubbles/bubble_special_two.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';
import 'profile_page.dart';
class ChattingScreen extends StatefulWidget {
  @override
  _ChattingScreenState createState() => _ChattingScreenState();
   ChattingScreen({Key key, this.title,this.profile_image}) : super(key: key);
  final String profile_image;
  final String title;
}

class _ChattingScreenState extends State<ChattingScreen> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
               title: ListTile(
                 title: Text(widget.title,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>profile_page(title: widget.title,backgroundImage: widget.profile_image,)));},
                     leading:CircleAvatar(
                       backgroundImage: NetworkImage(widget.profile_image),
                     ),
               ),

        actions: <Widget>[
          new IconButton(icon: Icon(Icons.videocam_rounded), onPressed: (){}),
          new IconButton(icon: Icon(Icons.call), onPressed: (){}),
          PopupMenuButton<String>(
            onSelected: handleClick1,
            itemBuilder: (BuildContext context){return {'View contact','Media, links, and docs','Search','Mute notifications','Wallpaper','More'}.map((String choice){
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();},
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body:Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              BubbleSpecialOne(
                text: 'Hii Friend..',
                isSender: false,
                color: Colors.grey[300],
                tail: true,
              ),
              BubbleSpecialOne(
                text: 'Hello...',
                isSender: true,
                color: Colors.green[200],
                //tail: false,
              ),
              BubbleSpecialOne(
                text: 'How are you ?',
                color: Colors.grey[300],
                isSender: false,
                tail: true,
              ),
              BubbleSpecialOne(
                text: 'I am Fine..',
                isSender: true,
                color: Colors.green[200],
                // tail: false,
              ),
              BubbleSpecialOne(
                text: 'Ya, I am also Good.',
                isSender: false,
                color: Colors.grey[300],
              ),
              BubbleSpecialOne(
                text: 'May all the lamps you light on the occasion of Diwali bring peace, joy and happiness to your life. Hope that the coming year turns out to be the most successful one for you. Happy Diwali!.',
                isSender: false,
                color: Colors.grey[300],
                tail: false,
              ),
              BubbleSpecialOne(
                text: 'Diwali is an occasion to celebrate the victory of good over evil, light over darkness and awareness over ignorance.Happy Diwali.',
                isSender: true,
                color: Colors.green[200],
              ),
              BubbleSpecialOne(
                text: 'Ok, Bye.',
                isSender: false,
                color:Colors.grey[300],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 85.0, 80.0, 0.0),
                child: Column(
                  children: <Widget>[
                    isPressed==true?
                    Container(
                      color: Colors.grey[300],
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              PopupMenuItem(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.deepPurple[600],
                                      child:Icon(Icons.description,color:Colors.white),),
                                    Text('Document',style: TextStyle(color: Colors.grey[800]),),
                                  ],
                                ) ,),
                              PopupMenuItem(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.pink,
                                      child:Icon(Icons.camera_alt_rounded,color:Colors.white),),
                                    Text('Camera',style: TextStyle(color: Colors.grey[800]),),
                                  ],
                                ) ,),
                              PopupMenuItem(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.purple,
                                        child: Icon(Icons.image,color:Colors.white)),
                                    Text('Gallery',style: TextStyle(color: Colors.grey[800]),),
                                  ],
                                ) ,),],),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              PopupMenuItem(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.orange[700],
                                        child: Icon(Icons.headset,color:Colors.white)),
                                    Text('Audio',style: TextStyle(color: Colors.grey[800]),),
                                  ],
                                ) ,),
                              PopupMenuItem(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.green[800],
                                        child: Icon(Icons.location_on,color:Colors.white)),
                                    Text('Location',style: TextStyle(color: Colors.grey[800])),
                                  ],
                                ) ,),
                              PopupMenuItem(
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.blue[700],
                                        child: Icon(Icons.person,color:Colors.white)),
                                    Text('Contact',style: TextStyle(color: Colors.grey[800]),),
                                  ],
                                ),),
                            ],),],
                      ),
                    )
                        :Container(),


                    Container(
                      child: new  TextFormField(
                        cursorColor: Colors.teal,
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          prefixIcon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
                          hintText: 'Type a message',
                          suffixIcon:IconButton(icon: Icon(Icons.attach_file_sharp,color: Colors.grey,),
                          onPressed: (){
                            setState(() {
                              isPressed=!isPressed;
                            });
                          },),
                          suffix:Icon(Icons.camera_alt_rounded,color: Colors.grey),
                          // Icon(Icons.camera_alt,color: Colors.grey,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,//new BorderSide(color: Colors.grey[600]),
                            borderRadius: new BorderRadius.circular(25.0),),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.grey),
                            borderRadius: new BorderRadius.circular(25.0),),
                        ),
                      ),),
                  ],
                ),
                // ),
              ),
        ],),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.send,color: Colors.white,),
      ),
    );
  }
}

void handleClick1(String value) {
  switch (value) {
    case 'View contact':
      break;
    case 'Media, links, and docs':
      break;
    case 'Search':
      break;
    case 'Mute notifications':
      break;
    case 'Wallpaper':
      break;
    case 'More':
      break;
  }}
