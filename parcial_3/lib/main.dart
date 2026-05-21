import 'package:flutter/material.dart';
import 'package:parcial_3/presentation/screens/chat/chat_screen.dart';
import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial 3',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).theme(),
      home: const ChatScreen(),
    );
  }
}
