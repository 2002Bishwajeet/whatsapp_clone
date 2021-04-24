import 'package:flutter/material.dart';
import '../Model/Chat_Model.dart';

class ChatScreen extends StatefulWidget {

 
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context,i)=> Column(
        children: [
          Divider(
            height: 10.0,
            indent: 75.0,
            endIndent: 10,
            
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyData[i].avatarUrl), //asset image for offline and network image for online
              radius: 25,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyData[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(dummyData[i].time,
                style: TextStyle(color: Colors.grey,fontSize: 15.0),)
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child:   Text(dummyData[i].message,
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
          )
        ],
      ),
    );
  }
}