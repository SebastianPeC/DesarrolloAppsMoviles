import 'package:flutter/material.dart';
import 'package:parcial_3/presentation/widgets/chat/my_message_bubble.dart';
import 'package:parcial_3/presentation/widgets/chat/her_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'data:image/jpeg;base64,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',
            ),
          ),
        ),
        title: Text('Profesor Ivan'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 300,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
