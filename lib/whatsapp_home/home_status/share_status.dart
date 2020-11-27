import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';

class share_status extends StatelessWidget {
  final List<ChatListItem> chatlistitem=[
    ChatListItem(
      PersonName: 'Nikita',
      ProfileURL: "https://images.pexels.com/photos/3339457/pexels-photo-3339457.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      Date: "Today,9:01 ",
      story: 'https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    ChatListItem(
        PersonName: 'Shalini',
        ProfileURL:'https://images.pexels.com/photos/2397361/pexels-photo-2397361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Megha',
        ProfileURL: 'https://images.pexels.com/photos/1535288/pexels-photo-1535288.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Sneha',
        ProfileURL: 'https://images.pexels.com/photos/4058316/pexels-photo-4058316.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Shubhangi',
        ProfileURL: 'https://images.pexels.com/photos/3905861/pexels-photo-3905861.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Mayur',
        ProfileURL: 'https://images.pexels.com/photos/744667/pexels-photo-744667.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Shiwani',
        ProfileURL: 'https://images.pexels.com/photos/4588047/pexels-photo-4588047.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Khushi',
        ProfileURL: 'https://images.pexels.com/photos/3810915/pexels-photo-3810915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Nilesh',
        ProfileURL: 'https://images.pexels.com/photos/3027243/pexels-photo-3027243.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share status with...'),
        backgroundColor: Colors.teal[700],
        actions: [
          Icon(Icons.search),
          Icon(Icons.done_all_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: chatlistitem.length,
              separatorBuilder: (ctx,i){
                return Divider();
              },
              itemBuilder: (ctx,i){
                return ListTile(
                  title: Text(chatlistitem[i].PersonName,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(chatlistitem[i].Date),
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundImage:NetworkImage(
                        chatlistitem[i].ProfileURL
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.done),
        backgroundColor: Colors.green,
      ),
    );
  }
}
