import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 380),
      padding: const EdgeInsets.all(15),
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/b2e979ea7f4f7988d0d7e48d3343cf28e0840965d0b64f1418e2d0c67bcb4051?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
              width: 85,
              fit: BoxFit.contain,
              semanticLabel: 'Avocado Information Image',
            ),
          ),
          const SizedBox(width: 13),
          const Expanded(
            child: Text(
              'Avocado is packed with healthy fats, fiber, vitamins and potassium.\nAvocado is used in both sweet and savory dishes',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}