import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';
import 'package:whatsappclone/whatsapp_home/home_calls/call_connect.dart';


class SelectCall extends StatelessWidget {
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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Select contact'),
              Visibility(visible: true,child: Text('10 contacts',style: TextStyle(fontSize: 12.0),),),
            ],
          ),
          actions: [
            IconButton(icon: Icon(Icons.search),onPressed: (){},),
            IconButton(icon: Icon(Icons.more_vert),onPressed: (){},),
          ],backgroundColor: Colors.teal[700],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              ListTile(
                title: Text('New group',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: CircleAvatar(child: Icon(Icons.people_rounded,color: Colors.white,),backgroundColor: Colors.green,),
              ),
              ListTile(
                title: Text('New contact',style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.qr_code_scanner,color: Colors.teal[400],),
                leading: CircleAvatar(child: Icon(Icons.person_add,color: Colors.white,),backgroundColor: Colors.green,),
              ),

              ListView.builder(
                shrinkWrap: true,
                itemCount: chatlistitem.length,
                itemBuilder: (ctx,i) {
                  return ListTile(
                      title: Text(chatlistitem[i].PersonName,style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(chatlistitem[i].story),
                      trailing:Wrap(
                        spacing: 40,
                        children: <Widget>[
                          IconButton(icon:Icon(Icons.call,color: Colors.teal[700],),onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>call_connect(
                                title: chatlistitem[i].PersonName,backgroundImage:chatlistitem[i].ProfileURL
                            )));
                          },),
                          Icon(Icons.videocam,color: Colors.teal[700],)
                        ],
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(chatlistitem[i].ProfileURL),),
                      onTap: (){});
                },
              ),
            ],
          ),
        ));
  }
}
