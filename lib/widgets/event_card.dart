import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 380),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(8, 8),
            spreadRadius: 7,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 11, 10, 11),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/223fc333528315dab2c34fe18a4fe8f676e6e260afa46921e9ad948bcb23ba72?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(11, 8, 55, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/6918abf8a6bb177e12f54b63948624052393a5f86c1d8be2d9a88eec12343588?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '20/10 8:30PM',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/cd4974cf33c29380778b74515a3c26be62d6c1891f996e3c57ae4bab11b64be2?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        width: 23,
                        height: 23 * 1.35,
                      ),
                      const SizedBox(width: 7),
                      Text(
                        '2/4',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}