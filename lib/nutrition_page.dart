import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/recipe_card.dart';

class NutritionalRequirementsScreen extends StatelessWidget {
  const NutritionalRequirementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Column(
                children: [
                  _buildHeader(),
                  const SizedBox(height: 56),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/5778605b664a16c7403c6a1542af27e14482787effd0102dc416f1f70f0baef9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'According to your data, you need more:',
                    ),
                  ),
                  const SizedBox(height: 13),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/8775dc8c77fa035e108c8134932909648efe21334c020302061932d844d40d97?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Protein',
                    ),
                  ),
                  const SizedBox(height: 13),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: RecipeCard(
                      imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/08c821bb94a438020847ff5d26f226c73b9d71a62133c1646de73f6b4fa25b76?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      description: 'Dietary Fiber',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0x7340E1CD),
      padding: const EdgeInsets.fromLTRB(40, 60, 40, 33),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
    );
  }
}