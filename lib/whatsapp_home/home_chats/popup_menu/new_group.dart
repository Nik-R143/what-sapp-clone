import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';

class Newgroup extends StatelessWidget {
  final List<ChatListItem> chatlistitem=[
    ChatListItem(
      PersonName: 'Anjali',
      ProfileURL: 'https://images.pexels.com/photos/3981477/pexels-photo-3981477.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'My Sweet family',
    ),
    ChatListItem(
      PersonName: 'Bharti',
      ProfileURL: 'https://images.pexels.com/photos/3755268/pexels-photo-3755268.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'Learning from Life',),
    ChatListItem(
      PersonName: 'Nikita',
      ProfileURL: 'https://images.pexels.com/photos/5614642/pexels-photo-5614642.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'NRk',),
    ChatListItem(
      PersonName: 'Rohan',
      ProfileURL: 'https://images.pexels.com/photos/3378993/pexels-photo-3378993.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'Busy',),
    ChatListItem(
      PersonName: 'Shalini',
      ProfileURL: 'https://images.pexels.com/photos/783200/pexels-photo-783200.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'At work',),
    ChatListItem(
      PersonName: 'Mayur',
      ProfileURL: 'https://images.pexels.com/photos/3890555/pexels-photo-3890555.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'Sleeping',),
    ChatListItem(
      PersonName: 'Priyanka',
      ProfileURL: 'https://images.pexels.com/photos/4045006/pexels-photo-4045006.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'Urgent calls only',),
    ChatListItem(
      PersonName: 'Vikram',
      ProfileURL: 'https://images.pexels.com/photos/1586298/pexels-photo-1586298.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'In a meeting',),
    ChatListItem(
      PersonName: 'Pratik',
      ProfileURL: 'https://images.pexels.com/photos/2583852/pexels-photo-2583852.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'Available',),
    ChatListItem(
      PersonName: 'Samrudhi',
      ProfileURL: 'https://images.pexels.com/photos/2674052/pexels-photo-2674052.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'At the gym',),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Text('New group'),
          Visibility(visible: true,child: Text('Add participants',style: TextStyle(fontSize: 12.0),),),
          ],),
        actions: [
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
        ],backgroundColor: Colors.teal[700],
      ),
      body:Container(
        child:ListView.builder(
          shrinkWrap: true,
          itemCount: chatlistitem.length,
          itemBuilder: (ctx,i) {
            return ListTile(
                title: Text(chatlistitem[i].PersonName,style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(chatlistitem[i].story),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(chatlistitem[i].ProfileURL),),
                //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ChattingScreen(
                  //title: chatlistitem[i].PersonName,),))
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.green[600],
        onPressed: (){},
      ),
    );
  }
}