import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Contact Name'),
      subtitle: const Text('Contact Info'),
      onTap: () {
        // Acciones para contacto
      },
    );
  }
}
