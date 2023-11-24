import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:chap_ui_messenger/constants.dart';
import 'package:chap_ui_messenger/chat_ui/theme.dart';

class UserToUserChats extends StatefulWidget {
  @override
  _UserToUserChatsState createState() => _UserToUserChatsState();
}

class _UserToUserChatsState extends State<UserToUserChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#2AC275"),
        // title: Text("Freedom"),
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            // BackButton(),

            CircleAvatar(
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(width: kDefaultPadding * 0.75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kristin Watson",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Active 3m ago",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
        // centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.local_phone),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPadding / 2),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: HexColor("#2AC275"),
        fixedColor: HexColor("#ffffff"),
        unselectedItemColor: HexColor("#000000"),

        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
