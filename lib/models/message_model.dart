import 'package:scholar_chat/constants.dart';

class MessageModel {
  final String messageText;
  final String id;
  MessageModel(this.messageText, this.id);

  factory MessageModel.fromjson(jsonData) {
    return MessageModel(jsonData[kMessage], jsonData[kID]);
  }
}
