import 'package:flutter/material.dart';
class StarredMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starred message'),
        backgroundColor: Colors.teal[700],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              IconButton(
              icon: Icon(Icons.stars_rounded,color: Colors.teal[400],size: 150,),
          ),

                // Container(
                //   child: Text('Tap and hold on any message in any chat to star it, so you can easily find it later.'),
                // ),
     ], ),
      ),
    );
  }
}
