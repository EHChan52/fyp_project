import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/recipe_card.dart';
import 'widgets/navigation_bar.dart';
import 'widgets/profile_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Column(
                  children: [
                    const ProfileHeader(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      name: 'Mike',
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 67),
                      decoration: BoxDecoration(
                        color: const Color(0x7340E1CD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Maybe you want...',
                        style: GoogleFonts.cormorantGaramond(
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/5778605b664a16c7403c6a1542af27e14482787effd0102dc416f1f70f0baef9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Get recipes suitable for any cooking skill level.',
                      width: 380,
                    ),
                    const SizedBox(height: 20),
                    const RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/e6e9ecb8fd46a4ead571397686e01a45d2523ad080ca54222bf477f70b37acca?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Find your Dinner Match Here',
                      width: 380,
                    ),
                    const SizedBox(height: 20),
                    const RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/4d88bf9c6abc58123e9e345ddfab2144f4d748877bebd247226c82d63151495b?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Shopping Time',
                      width: 380,
                    ),
                    const SizedBox(height: 20), // Add some space at the bottom
                    const RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/4d88bf9c6abc58123e9e345ddfab2144f4d748877bebd247226c82d63151495b?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Shopping Time',
                      width: 380,
                    ),
                    const SizedBox(height: 20), // Add some space at the bottom
                  ],
                ),
              ),
            ),
          ),
          const CustomNavigationBar(),
        ],
      ),
    );
  }
}