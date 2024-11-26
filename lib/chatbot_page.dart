import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/search_bar.dart';
import 'data/chat_message.dart';
import 'widgets/navigation_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 64),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 80),
                  decoration: BoxDecoration(
                    color: const Color(0x7340E1CD),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Chat with Veggie',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cormorantGaramond(
                      textStyle: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    semanticsLabel: 'Chat with Veggie Title',
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      width: 390,
                      child: const ChatMessages(),
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), 
                    child: SizedBox(
                      width: 380, 
                      height: 50, 
                      child: SearchBar1(),
                    ),
                  ),
                  SizedBox(height: 8), 
                  CustomNavigationBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}