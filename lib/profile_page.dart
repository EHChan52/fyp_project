import 'package:flutter/material.dart';

import 'personal_info_page.dart';
import 'token_page.dart';
import 'history_page.dart';
import 'issue_page.dart';
import 'hdp_page.dart';
import 'nutrition_page.dart';

import 'widgets/menu_item.dart';
import 'widgets/navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 200, 
                    width: double.infinity, 
                    color: const Color(0x7340E1CD),
                    child: Row(
                      children: [
                        const SizedBox(width: 22),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start, 
                          children: [
                            const SizedBox(height: 85), 
                            Image.network(
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/a047ce292ac2769033e355036671227e2cbd21f246a71c32570d4d4c57ab1013?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                              width: 80, 
                              height: 80, 
                              fit: BoxFit.cover, 
                            ),
                          ],
                        ),
                        const SizedBox(width: 16), 
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center, 
                            crossAxisAlignment: CrossAxisAlignment.start, 
                            children: [
                              Text(
                                'Mike',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  MenuItem(
                    icon: 'assets/PI.png',
                    title: 'Personal Information',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PIScreen()),
                      );
                    },
                  ),
                  MenuItem(
                    icon: 'assets/HDP.png',
                    title: 'Health & Dietary Preferences',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HealthProfileScreen()),
                      );
                    },
                  ),
                  MenuItem(
                    icon: 'assets/NutritionalRequirements.png', 
                    title: 'Nutritional Requirements',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NutritionalRequirementsScreen()),
                      );
                    },
                  ),
                  MenuItem(
                    icon: 'assets/Token.png',
                    title: 'Tokens',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TokensScreen()),
                      );
                    },
                  ),
                  MenuItem(
                    icon: 'assets/History.png',
                    title: 'History',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const TransactionHistoryScreen()),
                      );
                    },
                  ),
                  MenuItem(
                    icon: 'assets/ReportIssue.png',
                    title: 'Report Issue',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ReportIssueScreen()),
                      );
                    },
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
                  const SizedBox(height: 100), // Add some space at the bottom
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomNavigationBar(),
          ),
        ],
      ),
    );
  }
}