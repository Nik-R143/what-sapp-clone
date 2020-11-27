import 'package:flutter/material.dart';
class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('FAQ'),
            leading:  Icon(Icons.help_outline_outlined,color: Colors.teal,),
          ),
          ListTile(
            title: Text('Contact us'),
            subtitle: Text('Questions? Need help?'),
            leading:  Icon(Icons.people,color: Colors.teal,),
          ),
          ListTile(
            title: Text('Terms and Privacy Policy'),
            leading:  Icon(Icons.description_rounded,color: Colors.teal,),
          ),
          ListTile(
            title: Text('App info'),
            leading:  Icon(Icons.info_outline,color: Colors.teal,),
          ),
        ],
      ),
    );
  }
}
