import 'dart:async';
import 'dart:math';

import 'package:chat/core/models/chat_message.dart';
import 'package:chat/core/models/chat_user.dart';
import 'package:chat/core/service/chat/chat_service.dart';

class ChatMockService implements ChatService {
  static final List<ChatMessage> _msgs = [
    ChatMessage(
      id: '1',
      text: 'Bom dia',
      createdAt: DateTime.now(),
      userId: '123',
      userName: 'Bia',
      userImageURL: 'lib\\assets\\images\\avatar.png',
    ),
    ChatMessage(
      id: '2',
      text: 'Bom dia. Teremos reunião hoje?',
      createdAt: DateTime.now(),
      userId: '456',
      userName: 'Ana',
      userImageURL: 'lib\\assets\\images\\avatar.png',
    ),
    ChatMessage(
      id: '3',
      text: 'Sim, pode ser agora!',
      createdAt: DateTime.now(),
      userId: '123',
      userName: 'Bia',
      userImageURL: 'lib\\assets\\images\\avatar.png',
    ),
  ];

  static MultiStreamController<List<ChatMessage>>? _controller;

  static final _msgsStream = Stream<List<ChatMessage>>.multi((controler) {
    _controller = controler;
    controler.add(_msgs);
  });

  @override
  Stream<List<ChatMessage>> messagesStream() {
    return _msgsStream;
  }

  @override
  Future<ChatMessage> save(String text, ChatUser user) async {
    final newMessage = ChatMessage(
      id: Random().nextDouble().toString(),
      text: text,
      createdAt: DateTime.now(),
      userId: user.id,
      userName: user.name,
      userImageURL: user.imageURL,
    );
    _msgs.add(newMessage);
    _controller?.add(_msgs);
    return newMessage;
  }
}
