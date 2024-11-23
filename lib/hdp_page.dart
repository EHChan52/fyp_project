import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';



class HealthProfileScreen extends StatelessWidget {
  const HealthProfileScreen({Key? key}) : super(key: key);

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
            child: const Column(
              children: [
                ProfileHeader(
                  imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                  name: 'Mike',
                ),
                SizedBox(height: 56),
              ],
            ),
          ),
        ),
      ),
    );
  }
}