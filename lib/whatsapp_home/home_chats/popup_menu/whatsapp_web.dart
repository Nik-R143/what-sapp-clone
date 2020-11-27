import 'package:flutter/material.dart';

class WhatsAppWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR code'),
        backgroundColor: Colors.teal[700],
      ),
      body: Column(
          children: [
         ListTile(
          title: Text('To use WhatsApp Web, go to web.whatsapp.com on your computer.',style: TextStyle(color: Colors.grey),),
        ),
        Divider(),
        Alert(),
    ],),
    );
  }
}
class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("This is an alert message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

