import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';
import 'package:whatsappclone/whatsapp_home/home_calls/call_connect.dart';
import 'floatingbutton_select_call.dart';

class CALLS extends StatelessWidget {
  final List<ChatListItem> chatlistitem=[
  ChatListItem(
  PersonName: 'Nikita',
  ProfileURL: "https://images.pexels.com/photos/3339457/pexels-photo-3339457.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  Date: "17 November,1:30"
  ),
    ChatListItem(
        PersonName: 'Shalini',
        ProfileURL:'https://images.pexels.com/photos/2397361/pexels-photo-2397361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "15 November,3:30"
    ),
    ChatListItem(
        PersonName: 'Megha',
        ProfileURL: 'https://images.pexels.com/photos/1535288/pexels-photo-1535288.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "12 November,8:30"
    ),
    ChatListItem(
        PersonName: 'Sneha',
        ProfileURL: 'https://images.pexels.com/photos/4058316/pexels-photo-4058316.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "10 November,6:30"
    ),
    ChatListItem(
        PersonName: 'Shubhangi',
        ProfileURL: 'https://images.pexels.com/photos/3905861/pexels-photo-3905861.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "8 November,2:30"
    ),
    ChatListItem(
        PersonName: 'Mayur',
        ProfileURL: 'https://images.pexels.com/photos/744667/pexels-photo-744667.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "6 November,4:30"
    ),
    ChatListItem(
        PersonName: 'Shiwani',
        ProfileURL: 'https://images.pexels.com/photos/4588047/pexels-photo-4588047.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "5 November,12:30"
    ),
    ChatListItem(
        PersonName: 'Khushi',
        ProfileURL: 'https://images.pexels.com/photos/3810915/pexels-photo-3810915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "3 November,9:30"
    ),
    ChatListItem(
        PersonName: 'Nilesh',
        ProfileURL: 'https://images.pexels.com/photos/3027243/pexels-photo-3027243.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "1 November,9:01 "
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
      child: ListView.separated(
        itemCount: chatlistitem.length,
        separatorBuilder: (ctx,i){
          return Divider();
        },
        itemBuilder: (ctx,i){
          return ListTile(
            title: Text(chatlistitem[i].PersonName,style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle:Text(chatlistitem[i].Date),
            trailing:IconButton(icon:Icon(i%6!=0?Icons.call:Icons.videocam,color:Colors.teal),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>call_connect(
                  title: chatlistitem[i].PersonName,backgroundImage:chatlistitem[i].ProfileURL
              )));
            },),
            leading: CircleAvatar(
              radius: 35,
              backgroundImage:NetworkImage(
                  chatlistitem[i].ProfileURL
              ),
            ),
            onTap: (){},
          );
        },
      ),
    ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_ic_call),
        backgroundColor: Colors.green[600],
        onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectCall(),)),
      ),
    );}
}
