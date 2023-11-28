import 'package:chat_bae/constants/colors_const.dart';
import 'package:chat_bae/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatBaeApp());
}

class ChatBaeApp extends StatelessWidget{
  const ChatBaeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Bae',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
      ),
      color: AppColors.darkest,
      home: const WelcomePage(),
    );
  }
}