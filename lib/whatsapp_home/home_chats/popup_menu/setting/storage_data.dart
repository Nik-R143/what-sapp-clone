import 'package:flutter/material.dart';

class Storagedata extends StatefulWidget {
  //List<bool> isSelected = [false, true];
  @override
  _StoragedataState createState() => _StoragedataState();
}

class _StoragedataState extends State<Storagedata> {
  bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storage and data'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Manage Storage'),
            subtitle: Text('5.0 GB'),
            leading: Icon(Icons.store_rounded,color: Colors.teal,)
          ),
          Divider(),
          ListTile(
            title: Text('Network usage'),
            subtitle: Text('7.1 GB sent .12.1 GB received'),
            leading: Icon(Icons.data_usage,color: Colors.teal,),
          ),
          ListTile(
            title: Text('Use less data for calls'),
            leading: Container(width:20),
            trailing:Switch(
              activeColor: Colors.teal,
              value: isSelected,
              onChanged:(value){
                setState(() {
                  isSelected=value;
                });
                },
            ),
            //Icon(Icons.toggle_off_outlined),
          ),Divider(),
          ListTile(
          title: Text('Media auto-download',style: TextStyle(color:Colors.teal)),
          leading: Container(width:20),
          subtitle: Text('Voice messages are always automatically \ndownloaded'),),
          ListTile(
            title: Text('When using mobile data'),
            leading: Container(width:20),
            subtitle: Text('Photos'),),
          ListTile(
            title: Text('When connected on Wi-Fi'),
            leading: Container(width:20),
            subtitle: Text('All media'),),
          ListTile(
            title: Text('When roaming'),
            leading: Container(width:20),
            subtitle: Text('No media'),),
        ],
      ),
    );
  }
}
