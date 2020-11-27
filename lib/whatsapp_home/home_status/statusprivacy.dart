import 'package:flutter/material.dart';
import 'package:whatsappclone/whatsapp_home/home_status/share_status.dart';
import 'hide_status.dart';

class statusprivacy extends StatefulWidget {
  @override

  _statusprivacyState createState() => _statusprivacyState();
}
enum StatePrivacy { Mycontacts, Mycontactsexcepts, Onlysharewith }
class _statusprivacyState extends State<statusprivacy> {
  @override
  StatePrivacy privacy=StatePrivacy.Mycontacts;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status privacy'),
        backgroundColor: Colors.teal[700],
      ),
      body: Column(
        children: [
          ListTile(
              subtitle: Text('Who can see my status updates',style: TextStyle(color: Colors.teal),),
            ),
          ListTile(
            title: Text('My contacts'),
            leading: Radio(
              activeColor: Colors.teal[700],
              value: StatePrivacy.Mycontacts,
              groupValue: privacy,
              onChanged: (StatePrivacy value){
                setState(() {
                  privacy=value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('My contacts excepts...'),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>hide_status()));},
            leading: Radio(
              activeColor: Colors.teal[700],
                value: StatePrivacy.Mycontactsexcepts,
                groupValue: privacy,
                onChanged: (StatePrivacy value){
                  setState(() {
                    privacy=value;
                  });
                },
            ),
          ),
          ListTile(
            title: Text('Only share with...'),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>share_status()));},
            leading: Radio(
              activeColor: Colors.teal[700],
              value: StatePrivacy.Onlysharewith,
              groupValue: privacy,
              onChanged: (StatePrivacy value){
                setState(() {
                  privacy=value;
                });
              },
            ),
          ),
          ListTile(
            subtitle: Text('Changes to your privacy settings wont affect status updates that you have sent already'),
          ),

              Align(
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  child: Text('DONE',style: TextStyle(fontWeight: FontWeight.bold),),
                  color: Colors.green[400],
                  textColor: Colors.white,
                  onPressed: (){},
                ),
              ),
            ],
          ),
    );
  }
}
