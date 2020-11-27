import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';
import 'package:whatsappclone/whatsapp_home/home_chats/chat_screen.dart';
import 'floatingbutton_select_contact.dart';

class CHATS extends StatefulWidget {
  @override
  _CHATSState createState() => _CHATSState();
}

class _CHATSState extends State<CHATS> {
final List<ChatListItem> chatlistitem=[
  ChatListItem(
    PersonName: 'Nikita',
    ProfileURL: "https://images.pexels.com/photos/3339457/pexels-photo-3339457.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    LastMessage: "Take Care",
    Date: "9:01 am",
  ),
  ChatListItem(
      PersonName: 'Sneha',
      ProfileURL: 'https://images.pexels.com/photos/4058316/pexels-photo-4058316.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: 'Good Evening',
      Date: "7:15 pm"
  ),
  ChatListItem(
      PersonName: 'Nilesh',
      ProfileURL: 'https://images.pexels.com/photos/3027243/pexels-photo-3027243.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: 'Good Bye.',
      Date: "4:01 pm"
  ),
  ChatListItem(
      PersonName: 'Ganesh',
      ProfileURL: 'https://images.pexels.com/photos/2280845/pexels-photo-2280845.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: 'See ya.',
      Date: "5:01 pm"
  ),
  ChatListItem(
      PersonName: 'Rohit',
      ProfileURL: 'https://images.pexels.com/photos/3810915/pexels-photo-3810915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: 'Bye.',
      Date: "3:01 pm"
  ),
  ChatListItem(
      PersonName: 'Mayur',
      ProfileURL: 'https://images.pexels.com/photos/744667/pexels-photo-744667.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: "Take Care",
      Date: "9:01 am"
  ),
  ChatListItem(
      PersonName: "Shalini",
      ProfileURL: 'https://images.pexels.com/photos/2397361/pexels-photo-2397361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: "Take Care",
      Date: "9:01 am"
  ),
  ChatListItem(
      PersonName: "Megha",
      ProfileURL: 'https://images.pexels.com/photos/1535288/pexels-photo-1535288.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: "Take Care",
      Date: "9:01 am"
  ),
  ChatListItem(
      PersonName: "Smarudhi",
      ProfileURL: 'https://images.pexels.com/photos/4588047/pexels-photo-4588047.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: 'Take Care',
      Date: "9:01 am"
  ),
  ChatListItem(
      PersonName: "Rohan",
      ProfileURL: 'https://images.pexels.com/photos/3905861/pexels-photo-3905861.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      LastMessage: "Bye",
      Date: "9:01 am"
  ),
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: ListView.separated(
          itemCount: chatlistitem.length,
          separatorBuilder: (ctx,i){
            return Divider();
          },
          itemBuilder: (ctx,i){
            return  ListTile(
              title: Text(chatlistitem[i].PersonName,style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(chatlistitem[i].LastMessage),
              trailing: Text(chatlistitem[i].Date),
              leading: CircleAvatar(
                radius: 35,
                backgroundImage:NetworkImage(
                chatlistitem[i].ProfileURL
                ),
                ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChattingScreen(
                  title: chatlistitem[i].PersonName,profile_image:chatlistitem[i].ProfileURL,),));
              },
              );},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectContact()));
        },
        child: Icon(Icons.message_rounded),
        backgroundColor: Colors.green[600],
      ),
    );
  }
}

