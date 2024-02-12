import 'package:flutter/material.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/models/message_model.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({super.key, required this.messageModel});
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding:const EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 16),
        decoration:const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Text(
          messageModel.messageText,
          style:const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({super.key, required this.messageModel});
  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 16),
        decoration: BoxDecoration(
          color: Color(0xff006488),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            bottomLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Text(
          messageModel.messageText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
