import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.teal[700],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Privacy'),
            leading:  Icon(Icons.lock,color: Colors.teal,),
          ), ListTile(
            title: Text('Security'),
            leading:  Icon(Icons.security,color: Colors.teal,),
          ), ListTile(
            title: Text('Two-step verification'),
            leading:  Icon(Icons.more_rounded,color: Colors.teal,),
          ), ListTile(
            title: Text('Change number'),
            leading:  Icon(Icons.phonelink_ring,color: Colors.teal,),
          ), ListTile(
            title: Text('Request account info'),
            leading:  Icon(Icons.request_quote,color: Colors.teal,),
          ),
          ListTile(
            title: Text('Delete my account'),
            leading:  Icon(Icons.delete,color: Colors.teal,),
          ),
        ],
      ),
    );
  }
}
