import'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';
class call_connect extends StatefulWidget {
  call_connect({Key key, this.title, this.backgroundImage}) : super(key: key);
  final String title;
  final String backgroundImage;
  @override
  _call_connectState createState() => _call_connectState();
}

class _call_connectState extends State<call_connect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(120.0),
      child:AppBar(
        leading: IconButton(icon:Icon(Icons.keyboard_arrow_down),onPressed: (){
          Navigator.pop(context);
        },),
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('End-to-end encrypted',style: TextStyle(fontSize:12,color: Colors.teal[200])),
            Text(widget.title),
            //Text(,style: TextStyle(fontSize: 20),),
            Visibility(visible: true,child:Text('Calling',style: TextStyle(fontSize: 12,color: Colors.teal[200])),),
          ],
        ),
      ),),
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.backgroundImage),
            fit: BoxFit.cover,
          ),),),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.teal[700],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.volume_up,color: Colors.tealAccent,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.videocam_rounded,color: Colors.tealAccent,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.keyboard_voice_rounded,color: Colors.tealAccent,),label: ''),
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.pop(context);
            },
                child: Icon(Icons.call_end),
                backgroundColor: Colors.red[800],
          ),
    );
  }
}
