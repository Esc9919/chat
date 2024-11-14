import 'package:chat/core/models/chat_message.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool belongToCurrentUser;
  const MessageBubble({
    required this.message,
    required this.belongToCurrentUser,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          belongToCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: belongToCurrentUser
                ? Colors.grey.shade300
                : Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          width: 180,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          child: Column(
            children: [
              Text(
                message.userName,
                style: TextStyle(
                    color: belongToCurrentUser ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                message.text,
                style: TextStyle(
                  color: belongToCurrentUser ? Colors.black : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
