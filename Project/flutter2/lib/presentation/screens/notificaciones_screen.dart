import 'package:flutter/material.dart';

class NotificacionesScreen extends StatelessWidget {
  const NotificacionesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Centro de Notificaciones')),
      body: const Center(
        child: Icon(
          Icons.notifications_active,
          size: 100,
          color: Colors.orange,
        ),
      ),
    );
  }
}
