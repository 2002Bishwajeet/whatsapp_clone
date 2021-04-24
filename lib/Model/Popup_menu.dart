import 'package:flutter/material.dart';

Widget popupMenuButton() {
  return PopupMenuButton<String>(
   
    icon: Icon(Icons.more_vert),
    itemBuilder: (BuildContext context )=><PopupMenuEntry<String>>[
      PopupMenuItem<String>(
        value:"1",
        child: Text("New group"),
      ),
       PopupMenuItem<String>(
        value:"2",
        child: Text("New broadcast"),
      ),
       PopupMenuItem<String>(
        value:"3",
        child: Text("WhatsApp Web"),
      ),
       PopupMenuItem<String>(
        value:"4",
        child: Text("Starred messages"),
      ),
       PopupMenuItem<String>(
        value:"5",
        child: Text("Payments"),
      ),
       PopupMenuItem<String>(
        value:"6",
        child: Text("Settings"),
      )
    ],
  );
}
