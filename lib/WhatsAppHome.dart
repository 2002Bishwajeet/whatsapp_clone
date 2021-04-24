import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/FAB_remake.dart';
import 'package:whatsapp_clone/Model/Popup_menu.dart';
import 'Pages/Calls_screen.dart';
import 'Pages/Camera_screen.dart';
import 'Pages/Chat_screen.dart';
import 'Pages/Status.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  _handleTabIndex() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.animation.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.animation.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final int _cameraTapIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          // IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          popupMenuButton(),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          WillPopScope(
            // ignore: missing_return
            onWillPop: () {
              // shift to the right-handed-side tap;
              _tabController.animateTo(_cameraTapIndex + 1);
            },
            child: CameraScreen(),
          ),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: buildFloatingActionButton(context, _tabController),
    );
  }
}

// ignore: camel_case_types
// class Floating_button extends StatelessWidget {
//   const Floating_button({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       backgroundColor: Theme.of(context).accentColor,
//       child: Icon(
//         Icons.message_outlined,
//         color: Colors.white,
//       ),
//       onPressed: () => print("Open Chats"),
//     );
//   }
// }
