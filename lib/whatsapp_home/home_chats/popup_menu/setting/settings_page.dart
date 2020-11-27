import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';
import 'account.dart';
import 'help.dart';
import 'notifications.dart';
import 's_chats.dart';
import 'storage_data.dart';

class Settings extends StatelessWidget {
  final List<ChatListItem> chatlistitem=[
      ChatListItem(
      PersonName: 'Nikita',
      ProfileURL: 'https://images.pexels.com/photos/5614642/pexels-photo-5614642.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      story: 'My Sweet Family..',),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
              shrinkWrap: true,
              itemCount: chatlistitem.length,
              itemBuilder: (ctx,i){
                return ListTile(
                    title: Text(chatlistitem[i].PersonName),
                  trailing: Icon(Icons.qr_code_scanner,color: Colors.teal[400],),
                    subtitle: Text(chatlistitem[i].story),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(chatlistitem[i].ProfileURL),),
                    // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ChattingScreen(
                    //   title: chatlistitem[i].PersonName,),))
                );
              },),
            Divider(),
            ListTile(
              title: Text('Account'),
              subtitle: Text('Privacy,security,change number'),
              leading:  Icon(Icons.vpn_key_rounded,color: Colors.teal,),
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));},
            ), ListTile(
              title: Text('Chats'),
              subtitle: Text('Theme,wallpapers,chat history'),
              leading:  Icon(Icons.chat,color: Colors.teal,),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingChats()));},
            ), ListTile(
              title: Text('Notifications'),
              subtitle: Text('Message,group & call tones'),
              leading:  Icon(Icons.notifications,color: Colors.teal,),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));},
            ), ListTile(
              title: Text('Storage and data'),
              subtitle: Text('Network usage,auto-download'),
              leading:  Icon(Icons.data_usage,color: Colors.teal,),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Storagedata()));},
            ), ListTile(
              title: Text('Help'),
              subtitle: Text('FAQ, contact us, privacy policy'),
              leading:  Icon(Icons.help_outline_outlined,color: Colors.teal,),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Help()));},
            ),
            Divider(),
            ListTile(
              title: Text('Invite a friend'),
              leading: Icon(Icons.people_alt_rounded,color: Colors.teal,),
            ),
            Container(
              child: Column(
                children: [
                  Text('from',textAlign: TextAlign.center,),
                  Text('FACEBOOK',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ],),
      ),
    );
  }
}
