import 'package:flutter/material.dart';

class profile_page extends StatefulWidget {
  profile_page({Key key, this.title, this.backgroundImage}) : super(key: key);
  final String title;
  final String backgroundImage;
  @override
  _profile_pageState createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  bool isSelect=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Container(
                height: 500,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: NetworkImage(widget.backgroundImage),
                fit: BoxFit.cover,),),
                child:ListTile(
                  title: Container(alignment:Alignment.bottomLeft,child: Text(widget.title,style: TextStyle(color:Colors.white,fontSize:25,fontWeight: FontWeight.bold),)),
                  leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);},),
                  trailing: IconButton(icon: Icon(Icons.more_vert),onPressed: (){},),
              ),),
            ),
             ListTile(
                title: Text('Media, links, and docs',style: TextStyle(color: Colors.teal[700]),),
                trailing: Text('25'),
              ),
            ListTile(
              title: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/IMG/R.jpg'),
                      ),
                    ),
                  ),
            ),
            Divider(thickness: 10,),
            ListTile(
              title: Text('Mute notifications'),
              trailing: Switch(
                activeColor: Colors.teal[700],
                value: isSelect,
                onChanged: (value){
                  setState(() {
                    isSelect=value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Custom notifications'),
            ),
            ListTile(
              title: Text('Media visibility'),
            ),
            ListTile(
              title: Text('Starred messages'),
            ),
            Divider(thickness: 10,),
            ListTile(
              title: Text('Disappearing message'),
              trailing: Icon(Icons.timelapse,color: Colors.teal[700],),
              subtitle: Text('Off'),
            ),
            ListTile(
              title: Text('Encryption'),
              trailing: Icon(Icons.lock,color: Colors.teal[700],),
              subtitle: Text('Messages ans calls are end-to-end ecrypted.\n Tap to verify.'),
            ),
            Divider(thickness: 10,),
            ListTile(
              title: Text('About and phone number',style: TextStyle(color: Colors.teal[700]),),
            ),
            ListTile(
              title: Text('Urgent calls only'),
              subtitle: Text('30 september 2019'),
            ),
            Divider(),
            ListTile(
              title: Text('+917719977524'),
              trailing:
                  Icon(Icons.videocam_rounded,color: Colors.teal[700],),
                  //Icon(Icons.videocam_rounded),
                  // IconButton(icon:Icon(Icons.videocam_rounded),onPressed: (){},),
                  // IconButton(icon:Icon(Icons.videocam_rounded),onPressed: (){},),
                  // IconButton(icon:Icon(Icons.videocam_rounded),onPressed: (){},),
            ),
            Divider(thickness: 10,),
            ListTile(
              title: Text('Groups in common',style: TextStyle(color: Colors.teal[700]),),
            ),
            Divider(thickness: 10,),
            ListTile(
              leading: Icon(Icons.block,color: Colors.red[700],),
              title: Text('Block',style: TextStyle(color: Colors.red[700]),),
            ),
            Divider(thickness: 10,),
            ListTile(
              leading: Icon(Icons.thumb_down,color: Colors.red[700],),
              title: Text('Report contact',style: TextStyle(color: Colors.red[700]),),
            ),
          ],
        ),
      ),
    );
  }
}
