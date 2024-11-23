import 'package:flutter/material.dart';

import '../widgets/search_bar.dart';

import 'data/chat_message.dart';

import 'widgets/navigation_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 64),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 70),
                decoration: BoxDecoration(
                  color: const Color(0x7340E1CD),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Chat with Veggie',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                  semanticsLabel: 'Chat with Veggie Title',
                ),
              ),
              const ChatMessages(),
              const SearchBar1(),
              const CustomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}