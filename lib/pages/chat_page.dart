import 'package:chat/core/service/auth/auth_service.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Chat page'),
            ElevatedButton(
              onPressed: () {

              AuthService().logout();
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}