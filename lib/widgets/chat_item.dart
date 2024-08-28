import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Chat Item'),
      subtitle: const Text('Last message'),
      onTap: () {
        // Navegar a la pantalla de chat
      },
    );
  }
}
