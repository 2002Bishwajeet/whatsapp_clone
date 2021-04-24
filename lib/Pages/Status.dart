import 'package:flutter/material.dart';

const listLeadingAvatarRadius = 25.0;
final imagedp = "assets/images/dp.jpg";

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                    radius: listLeadingAvatarRadius,
                    backgroundImage: AssetImage(imagedp)),
                    Positioned( right: 0.0,
                bottom: 0.0,
                child: CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(
                    Icons.add,
                    size: 20.0,
                    color: Colors.white,
                  ),)
                  )
              ],
            ),
             title: Text('My status'),
          subtitle: Text('Tap to add status update'),
          );
        });
  }
}
