import 'package:flutter/material.dart';
import 'package:parcial_3/domain/entities/message.dart';
import 'package:parcial_3/config/helpers/get_parcial3_answer.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getParcial3Answer = GetParcial3Answer();
  List<Message> messageList = [
    Message(text: 'Hola profesor, ya terminé el parcial', fromWho: FromWho.me),
    Message(text: 'Hola Sebastian, felicidades', fromWho: FromWho.his),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      hisReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> hisReply() async {
    final hisMessage = await getParcial3Answer.getAnswer();
    messageList.add(hisMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
