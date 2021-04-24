import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/Camera_Model.dart';

import 'Contacts.dart';
import 'SelContact.dart';

bool getIsTabCamera(TabController tabController) {
  return tabController.animation.value < 0.7;
}

bool getIsChatList(TabController tabController) {
  return tabController.animation.value > 0.7 &&
      tabController.animation.value < 1.7;
}

bool getIsStatusList(TabController tabController) {
  return tabController.animation.value > 1.7 &&
      tabController.animation.value < 2.7;
}

bool getIsCallList(TabController tabController) {
  return tabController.animation.value > 2.7;
}

buildFloatingActionButton(BuildContext context, TabController tabController) {
  if (getIsChatList(tabController)) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return SelectContact();
        }));
      },
      child: Icon(
        Icons.message_rounded, color: Colors.white,
      ),
    );
  } else if (getIsStatusList(tabController)) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return CameraApp();
        }));
      },
      child: Icon(
        Icons.camera_alt,
      ),
    );
  } else if (getIsCallList(tabController)) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return SelectCallContact();
        }));
      },
      child: Icon(
        Icons.add_call,
      ),
    );
  }

  return null;
}