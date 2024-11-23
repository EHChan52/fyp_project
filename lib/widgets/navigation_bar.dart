import 'package:flutter/material.dart';
import 'package:fyp_project/chatbot_page.dart';
import 'package:fyp_project/community_page.dart';
import 'package:fyp_project/shopping_page.dart';
import 'package:fyp_project/user_home_page.dart';
import 'package:fyp_project/profile_page.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0x4D000000),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 23,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
                );
            },
          ),
          IconButton(
            icon: const Icon(Icons.people_alt),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommunityScreen()),
                );
            },
          ),
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
                );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shop),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopScreen()),
                );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
            },
          ),
        ],
      ),
    );
  }
}