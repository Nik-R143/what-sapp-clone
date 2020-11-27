import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  @override
  _textfieldState createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool isPressed=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field'),
      ),
      body: Container(
        //child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 0.0),
          child: Column(
            children: <Widget>[
        isPressed==true?
        Container(
          color: Colors.grey[300],
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PopupMenuItem(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepPurple[600],
                          child:Icon(Icons.description,color:Colors.white),),
                        Text('Document',style: TextStyle(color: Colors.grey[800]),),
                      ],
                    ) ,),
                  PopupMenuItem(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.pink,
                          child:Icon(Icons.camera_alt_rounded,color:Colors.white),),
                        Text('Camera',style: TextStyle(color: Colors.grey[800]),),
                      ],
                    ) ,),
                  PopupMenuItem(
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.purple,
                            child: Icon(Icons.image,color:Colors.white)),
                        Text('Gallery',style: TextStyle(color: Colors.grey[800]),),
                      ],
                    ) ,),],),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PopupMenuItem(
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.orange[700],
                            child: Icon(Icons.headset,color:Colors.white)),
                        Text('Audio',style: TextStyle(color: Colors.grey[800]),),
                      ],
                    ) ,),
                  PopupMenuItem(
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.green[800],
                            child: Icon(Icons.location_on,color:Colors.white)),
                        Text('Location',style: TextStyle(color: Colors.grey[800])),
                      ],
                    ) ,),
                  PopupMenuItem(
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue[700],
                            child: Icon(Icons.person,color:Colors.white)),
                        Text('Contact',style: TextStyle(color: Colors.grey[800]),),
                      ],
                    ),),
                ],),],
          ),
        )
            :Container(),
        Container(
          // padding: EdgeInsetsDirectional.fromSTEB(10.0,80.0, 80.0, 20.0),
          //padding: EdgeInsets.all(5.0),
          child:TextFormField(
            cursorColor: Colors.teal,
            //keyboardType: inputType,
            decoration: new InputDecoration(
              filled: true,
              fillColor: Colors.grey[300],
              prefixIcon: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
              hintText: 'Type a message',
              suffixIcon:InkWell(
              child:IconButton(icon:Icon(Icons.attach_file_sharp,color: Colors.grey),onPressed: (){
                setState(() {
                  isPressed=!isPressed;
                });
              },),),
              suffix:Icon(Icons.camera_alt_rounded,color: Colors.grey),
              // Icon(Icons.camera_alt,color: Colors.grey,),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,//new BorderSide(color: Colors.grey[600]),
                borderRadius: new BorderRadius.circular(25.0),),
              enabledBorder: UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.grey),
                borderRadius: new BorderRadius.circular(25.0),),
              //contentPadding: const EdgeInsets.only(
              // left: 14.0, bottom:2.0, top: 8.0),
            ),
          ),),
        ],
      ),
   // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.send,color: Colors.white,),
      ),
    );
  }
}
