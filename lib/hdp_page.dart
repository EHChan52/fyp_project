import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/section_header.dart';
import 'widgets/list_item.dart';


class HealthProfileScreen extends StatelessWidget {
  const HealthProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    color: const Color(0x7340E1CD),
                    padding: const EdgeInsets.fromLTRB(29, 33, 80, 33),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                          ],
                        ),
                        Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/a047ce292ac2769033e355036671227e2cbd21f246a71c32570d4d4c57ab1013?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                          width: 85,
                          height: 85,
                          semanticLabel: 'User avatar',
                        ),
                        const SizedBox(height: 11),
                        const Text(
                          'username:123456',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 56),
                SectionHeader(
                  title: "Health Condition",
                  
                ),
                ListItem(
                  title: "Disease",
                  value: "0",
                  iconUrl: "assets/Forward.png",
                ),
                ListItem(
                  title: "Medication",
                  value: "No",
                  iconUrl: "assets/Forward.png",
                ),
                ListItem(
                  title: "Allergies",
                  value: "0",
                  iconUrl: "assets/Forward.png",
                ),
                SectionHeader(
                  title: "Dietary Preference",
                  
                ),
                ListItem(
                  title: "Favorites",
                  value: "5",
                  iconUrl: "assets/Forward.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}