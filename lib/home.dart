// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:whatsappclone/avatar.dart';
import 'package:whatsappclone/settings_tile.dart';
import 'package:whatsappclone/text.dart';

import 'chatbox.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.grey.shade900,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    padding: EdgeInsets.only(left: 15),
                    scrollDirection: Axis.horizontal,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Messages",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                            selectionColor: Colors.white,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Online",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            selectionColor: Colors.white,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Groups",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            selectionColor: Colors.white,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "More",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            selectionColor: Colors.white,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 10,
              ),
              height: 220,
              decoration: BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favourite Contacts",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyAvatar(imgPath: "assets/doctor.jpg", name: "Bishop"),
                        SizedBox(
                          width: 20,
                        ),
                        MyAvatar(
                            imgPath: "assets/doctor2.jpg", name: "Enimojesu"),
                        SizedBox(
                          width: 20,
                        ),
                        MyAvatar(imgPath: "assets/doctor3.jpg", name: "Baba"),
                        SizedBox(
                          width: 20,
                        ),
                        MyAvatar(
                            imgPath: "assets/doctor4.jpg", name: "Willams"),
                        SizedBox(
                          width: 20,
                        ),
                        MyAvatar(
                            imgPath: "assets/doctor5.jpg", name: "Aderounmu"),
                        SizedBox(
                          width: 20,
                        ),
                        MyAvatar(
                            imgPath: "assets/doctor6.jpg",
                            name: "King of His Room"),
                        SizedBox(
                          width: 20,
                        ),
                        MyAvatar(imgPath: "assets/doctor7.jpg", name: "Old Man")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 380,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ChatBox();
                        }));
                      },
                      child: TextTile(
                        imgPath: "assets/doctor.jpg",
                        name: "Bishop",
                        text: "What's up",
                        time: "16:34",
                        num: 1,
                      ),
                    ),
                    TextTile(
                      imgPath: "assets/doctor2.jpg",
                      name: "Enimojesu",
                      text: "Let's eat",
                      time: "16:34",
                      num: 2,
                    ),
                    TextTile(
                      imgPath: "assets/doctor3.jpg",
                      name: "Baba Betting",
                      text: "How many odds for today",
                      time: "16:34",
                      num: 0,
                    ),
                    TextTile(
                      imgPath: "assets/doctor4.jpg",
                      name: "Christiana",
                      text: "What's up babe?",
                      time: "16:34",
                      num: 5,
                    ),
                    TextTile(
                      imgPath: "assets/doctor5.jpg",
                      name: "Yoga",
                      text: "Irritating shit",
                      time: "23:34",
                      num: 6,
                    ),
                    TextTile(
                      imgPath: "assets/doctor6.jpg",
                      name: "Scammer",
                      text: "Irritating shit",
                      time: "23:34",
                      num: 0,
                    ),
                    TextTile(
                      imgPath: "assets/doctor7.jpg",
                      name: "Imma",
                      text: "Irritating shit",
                      time: "23:34",
                      num: 45,
                    )
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit_outlined,
          size: 30,
        ),
        backgroundColor: Color(0xFF27c1a9),
        splashColor: Colors.blue,
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        backgroundColor: Colors.grey.shade900, 
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 9, blurRadius: 3)
          ]),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text("Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/doctor4.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Enimoejukite Brandon",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15))
                  ],
                ),

                // account
                SizedBox(
                  height: 50,
                ),
                SettingsTile(
                  icon: Icons.key_rounded,
                  title: "Account",
                ),

                //chats
                SizedBox(
                  height: 20,
                ),
                SettingsTile(
                  icon: Icons.message_rounded,
                  title: "Chats",
                ),

                // notifications
                SizedBox(
                  height: 20,
                ),
                SettingsTile(
                  icon: Icons.notifications_active_rounded,
                  title: "Notifications",
                ),

                // data and storage

                SizedBox(
                  height: 20,
                ),
                SettingsTile(
                  icon: Icons.storage_rounded,
                  title: "Data and Storage",
                )

                // help
                ,
                SizedBox(
                  height: 20,
                ),
                SettingsTile(
                  icon: Icons.help_rounded,
                  title: "Help",
                ),
                SizedBox(
                  height: 40,
                ),
                Divider(
                  color: Color(0xFF27c1a9),
                  thickness: 1,
                ),

                SizedBox(
                  height: 30,
                ),
                // invite a friend
                SettingsTile(
                  icon: Icons.people_outline,
                  title: "Invite a Friend",
                ),
                SizedBox(
                  height: 270,
                ),
                SettingsTile(
                  icon: Icons.logout_outlined,
                  title: "Log Out",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
