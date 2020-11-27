import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/chat_list_item.dart';
import 'story_page_view.dart';

class STATUS extends StatefulWidget {
  @override
  _STATUSState createState() => _STATUSState();
}

class _STATUSState extends State<STATUS> {
  final List<ChatListItem> chatlistitem=[
    ChatListItem(
        PersonName: 'Nikita',
        ProfileURL: "https://images.pexels.com/photos/3339457/pexels-photo-3339457.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        Date: "Today,9:01 ",
        story: 'https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    ),
    ChatListItem(
        PersonName: 'Shalini',
        ProfileURL:'https://images.pexels.com/photos/2397361/pexels-photo-2397361.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Megha',
        ProfileURL: 'https://images.pexels.com/photos/1535288/pexels-photo-1535288.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Sneha',
        ProfileURL: 'https://images.pexels.com/photos/4058316/pexels-photo-4058316.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Shubhangi',
        ProfileURL: 'https://images.pexels.com/photos/3905861/pexels-photo-3905861.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Mayur',
        ProfileURL: 'https://images.pexels.com/photos/744667/pexels-photo-744667.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Shiwani',
        ProfileURL: 'https://images.pexels.com/photos/4588047/pexels-photo-4588047.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Khushi',
        ProfileURL: 'https://images.pexels.com/photos/3810915/pexels-photo-3810915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
    ChatListItem(
        PersonName: 'Nilesh',
        ProfileURL: 'https://images.pexels.com/photos/3027243/pexels-photo-3027243.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        Date: "9:01 am"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              SizedBox(
                width: 45,
                height: 50,
                child: FloatingActionButton(
                 onPressed: () {},
                  heroTag: null,
                  child: Icon(Icons.create_outlined,color: Colors.teal[800],),
                  backgroundColor: Colors.grey[400],
                  elevation: 20.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  heroTag: null,
                  onPressed: () {},
                  child: Icon(Icons.camera_alt_rounded),
                  backgroundColor: Colors.green[700],
                  elevation: 20.0,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: Stack(
                    children:<Widget>[
                      CircleAvatar(
                        child: Icon(Icons.person,color: Colors.white,),
                        backgroundColor: Colors.grey,
                      ),
                      Positioned(
                       top: 21.0,left: 20.0,
                        child: Container(
                          width: 20.0,height: 20.0,
                          child: Icon(Icons.add,color: Colors.white,size: 15,),
                          decoration: BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                        ),
                      ),
                    ],),
                  title: Text('My Status', style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('Tap to add status update'),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                Container(
                  color:Colors.grey[200],
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  child: Text('Viewed Updates',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),),
                  alignment: Alignment.centerLeft,
                ),
                Divider(thickness: 0.5,color: Colors.grey,),

            ListView.separated(
                  shrinkWrap: true,
                  itemCount: chatlistitem.length,
                  separatorBuilder: (ctx,i){
                    return Divider();
                  },
                  itemBuilder: (ctx,i){
                    return ListTile(
                      title: Text(chatlistitem[i].PersonName,style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(chatlistitem[i].Date),
                         leading: CircleAvatar(
                        radius: 35,
                        backgroundImage:NetworkImage(
                            chatlistitem[i].ProfileURL
                        ),
                      ),
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPageView(),));},
                    );
                  },
                ),
              ],),
          ),
          );
  }
}






















