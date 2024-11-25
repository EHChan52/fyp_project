import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String imageUrl;
  final String description;
  final double width;

  const RecipeCard({
    super.key,
    required this.imageUrl,
    required this.description,
    this.width = double.infinity, // Default width is set to double.infinity
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Recipe suggestion card: $description',
      child: Container(
        width: width, // Set the width of the card
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color(0x40000000),
              blurRadius: 20,
              offset: Offset(8, 8),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
                semanticLabel: 'Recipe image for $description',
              ),
            ),
            const SizedBox(height: 7),
            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}