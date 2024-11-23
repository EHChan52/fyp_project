import 'package:flutter/material.dart';

import 'personal_info_page.dart';

import 'widgets/profile_header.dart';
import 'widgets/menu_item.dart';
import 'widgets/navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF0F0F0),
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                const ProfileHeader(
                  imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                  name: 'Mike',
                ),
                const SizedBox(height: 56),
                MenuItem(
                  icon: 'assets/PI.png',
                  title: 'Personal Information',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PIScreen()),
                    );
                  },
                ),
                MenuItem(
                  icon: 'assets/HDP.png',
                  title: 'Health & Dietary Preferences',
                  onTap: () {},
                ),
                MenuItem(
                  icon: 'assets/NutritionalRequirements.png', 
                  title: 'Nutritional Requirements',
                  onTap: () {},
                ),
                MenuItem(
                  icon: 'assets/Token.png',
                  title: 'Tokens',
                  onTap: () {},
                ),
                MenuItem(
                  icon: 'assets/History.png',
                  title: 'History',
                  onTap: () {},
                ),
                MenuItem(
                  icon: 'assets/ReportIssue.png',
                  title: 'Report Issue',
                  onTap: () {},
                ),
                MenuItem(
                  icon: 'assets/Setting.png',
                  title: 'Settings', 
                  onTap: () {},
                ),
                const SizedBox(height: 58),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                    ),
                    child: const Text(
                      'Log Out',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 23),
                const CustomNavigationBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}