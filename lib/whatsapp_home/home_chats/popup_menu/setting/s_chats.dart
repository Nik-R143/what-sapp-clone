import'package:flutter/material.dart';

class SettingChats extends StatefulWidget {
  @override
  _SettingChatsState createState() => _SettingChatsState();
}

class _SettingChatsState extends State<SettingChats> {
  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Display',style: TextStyle(color: Colors.teal),),),
          ListTile(
            title: Text('Theme'),
            leading: Icon(Icons.brightness_6,color: Colors.teal,),
            subtitle:Text('System default'),),
          ListTile(
            title: Text('Wallpaper'),
            leading: Icon(Icons.wallpaper,color: Colors.teal,),),
          Divider(),
          ListTile(
            title: Text('Chat settings',style: TextStyle(color: Colors.teal),),),
          ListTile(
            title: Text('Enter is send'),
            subtitle: Text('Enter key will send your message'),
            leading: Container(width: 20,),
            trailing: Switch(
              activeColor: Colors.teal,
              value: isSelected,
              onChanged:(value){
                isSelected=value;
              },),),
          ListTile(
            title: Text('Media visibility'),
            subtitle: Text('Show newly downloaded media in your phones gallery'),
            leading: Container(width: 20,),
            trailing: Switch(
              activeColor: Colors.teal,
              value: isSelected,
              onChanged:(value){
                setState(() {
                  isSelected=value;
                });
              },),),
          ListTile(
            title: Text('Font size'),
            leading: Container(width: 20,),
            subtitle: Text('Medium'),),
          Divider(),
          ListTile(
            title: Text('App Language'),
            subtitle: Text("Phone's language(English)"),
            leading: Icon(Icons.language,color: Colors.teal,),),
          ListTile(
            title: Text('Chat backup'),
            leading: Icon(Icons.backup,color: Colors.teal,),),
          ListTile(
            title: Text('Chat history'),
            leading: Icon(Icons.history,color: Colors.teal,),),
        ],),
    );
  }
}
