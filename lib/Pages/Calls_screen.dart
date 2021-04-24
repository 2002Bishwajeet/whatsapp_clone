import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/Call_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: calldata.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 10.0,
                  indent: 75.0,
                  endIndent: 10,
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(calldata[i].avatar),
                    radius: 25,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        calldata[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                     
                         calldata[i].ucon
                        
                    ],
                  ),
                  subtitle: Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      calldata[i].date,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ));
  }
}
