import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {
  final String title;
  final String location;
  final String originalPrice;
  final String discountedPrice;
  final String imageUrl;

  const DealCard({
    Key? key,
    this.title = '',
    required this.location,
    this.originalPrice = '',
    required this.discountedPrice,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(8, 8),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: Column(
        children: [
          if (title.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          Image.network(
            imageUrl,
            width: 180,
            height: 142,
            semanticLabel: 'Deal image for $location',
          ),
          Text(
            location,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 7),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0x7340E1CD),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (originalPrice.isNotEmpty)
                  Text(
                    originalPrice,
                    style: const TextStyle(fontSize: 12),
                  ),
                const SizedBox(width: 7),
                Text(
                  discountedPrice,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 7),
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/4da606160a69e115d2e747b064f596abca741160ba20af37889645e0ea44c0b8?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                  width: 28,
                  height: 25,
                  semanticLabel: 'Currency icon',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}