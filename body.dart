import 'package:chatting_application/chat.dart';
import 'package:chatting_application/chats_screen.dart';
import 'package:chatting_application/filled_outline_button.dart';
import 'package:chatting_application/constants.dart';
import 'package:chatting_application/Chat.dart';
import 'package:chatting_application/message_screen.dart';
import 'package:flutter/material.dart';
import 'chat_card.dart';
import 'chat.dart' as chat;

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Message"),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chat.chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chat.chatsData[index],
              press: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return showAlert();
                  },
                );
                // showAlert();
              },
            ),
          ),
        ),
      ],
    );
  }

  AlertDialog showAlert() {
    // Create AlertDialog
    return AlertDialog(
      content: Text("Send friend request to connect with people"),
      actions: [
        FlatButton(
          child: Text("Send"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatsScreen(),
              ),
            );
          },
        ),
        FlatButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context,rootNavigator: true).pop('dialog');
          },
        ),
      ],
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button

    // show the dialog
  }
}
