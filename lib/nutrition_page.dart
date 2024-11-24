import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/recipe_card.dart';

class NutritionalRequirementsScreen extends StatelessWidget {
  const NutritionalRequirementsScreen({super.key});

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
          child: const Column(
            children: [
              ProfileHeader(
                imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                name: 'Mike',
              ),
              SizedBox(height: 56),
              RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/5778605b664a16c7403c6a1542af27e14482787effd0102dc416f1f70f0baef9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'According to your data, you need more:',
                    ),
              SizedBox(height: 13),
              RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/8775dc8c77fa035e108c8134932909648efe21334c020302061932d844d40d97?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Protein',
                    ),
              SizedBox(height: 13),
              RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/08c821bb94a438020847ff5d26f226c73b9d71a62133c1646de73f6b4fa25b76?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Dietary Fiber',
                    ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}