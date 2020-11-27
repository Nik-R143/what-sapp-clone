import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSelected=false;
  bool isSelected1=false;
  bool isSelected2=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.teal,
        actions: [Icon(Icons.more_vert),],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Conversation tones'),
              subtitle: Text('Play sounds for incoming and outgoing \nmessages'),
              trailing: Switch(
              activeColor: Colors.teal,
              value: isSelected,
              onChanged:(value){
              setState(() {
              isSelected=value;
              });
              },),
            ),
            Divider(),
            ListTile(
              title: Text('Messages',style: TextStyle(color: Colors.teal)),),
            ListTile(
              title: Text('Notification tone'),
              subtitle:Text('Dew Drops'),),
            ListTile(
              title: Text('Vibrate'),
              subtitle:Text('Short'),),
            ListTile(
              title: Text('Notification tone'),),
              // subtitle:CheckboxListTile(
              //   title: Text('Vibrate'),
              //   subtitle: Text('Default'),
              // )),
            ListTile(
              title: Text('Popup notification'),
              subtitle:Text('Not available'),),
            ListTile(
              title: Text('Light'),
              subtitle:Text('Purple'),),
            ListTile(
              title: Text('Use high priority notifications'),
              subtitle: Text('Show previews of notifications at the top of \nthe screen'),
              trailing: Switch(
                    activeColor: Colors.teal,
                    value: isSelected1,
                    onChanged:(value){
                      setState(() {
                        isSelected1=value;
                      });
                    },),),
            Divider(),
            ListTile(title: Text('Groups',style: TextStyle(color: Colors.teal),),),
            ListTile(
              title: Text('Notification tone'),),
            // subtitle:CheckboxListTile(
            //   title: Text('Vibrate'),
            //   subtitle: Text('Default'),
            // )),
            ListTile(
              title: Text('Popup notification'),
              subtitle:Text('Not available'),),
            ListTile(
              title: Text('Light'),
              subtitle:Text('Purple'),),
            ListTile(
              title: Text('Use high priority notifications'),
              subtitle: Text('Show previews of notifications at the top of \nthe screen'),
              trailing: Switch(
                activeColor: Colors.teal,
                value: isSelected2,
                onChanged:(value){
                  setState(() {
                    isSelected2=value;
                  });
                },),),
            Divider(),
            ListTile(title: Text('Calls',style: TextStyle(color: Colors.teal),),),
            ListTile(
              title: Text('Ringtone'),
              subtitle:Text('Over the Horizon'),),
            ListTile(
              title: Text('Vibrate'),
              subtitle:Text('Short'),),
          ],),
      ),
    );
  }
}

