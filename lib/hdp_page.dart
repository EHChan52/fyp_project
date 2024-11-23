import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/section_header.dart';
import 'widgets/list_item.dart';


class HealthProfileScreen extends StatelessWidget {
  const HealthProfileScreen({Key? key}) : super(key: key);

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
                const ProfileHeader(
                  imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb484',
                  name: 'username:123456',
                ),
                const SizedBox(height: 56),
                const SectionHeader(
                  title: "Health Condition",
                  
                ),
                ListItem(
                  title: "Disease",
                  value: "0",
                  iconUrl: "https://cdn.builder.io/api/v1/image/assets/TEMP/16985cb8cf7e8dd5cb8a87d78f657858c3d408ebcdbf25cf46dea1e0fd0300e9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
                ),
                ListItem(
                  title: "Medication",
                  value: "No",
                  iconUrl: "https://cdn.builder.io/api/v1/image/assets/TEMP/16985cb8cf7e8dd5cb8a87d78f657858c3d408ebcdbf25cf46dea1e0fd0300e9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
                ),
                ListItem(
                  title: "Allergies",
                  value: "0",
                  iconUrl: "https://cdn.builder.io/api/v1/image/assets/TEMP/16985cb8cf7e8dd5cb8a87d78f657858c3d408ebcdbf25cf46dea1e0fd0300e9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
                ),
                const SectionHeader(
                  title: "Dietary Preference",
                  
                ),
                ListItem(
                  title: "Favorites",
                  value: "5",
                  iconUrl: "https://cdn.builder.io/api/v1/image/assets/TEMP/16985cb8cf7e8dd5cb8a87d78f657858c3d408ebcdbf25cf46dea1e0fd0300e9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}