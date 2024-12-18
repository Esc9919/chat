import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Minhas Notificações',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text('Notificações'),
      ),
    );
  }
}
