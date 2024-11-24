import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {
  final String title;
  final String location;
  final String originalPrice;
  final String discountedPrice;
  final String imageUrl;

  const DealCard({
    super.key,
    this.title = '',
    required this.location,
    this.originalPrice = '',
    this.discountedPrice = '',
    required this.imageUrl,
  });

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
                Image.asset(
                  'assets/Token.png',
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