import 'package:flutter/material.dart';

class AjustesScreen extends StatelessWidget {
  const AjustesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ajustes del Sistema')),
      body: const Center(
        child: Icon(Icons.settings, size: 100, color: Colors.grey),
      ),
    );
  }
}
