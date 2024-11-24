import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {
  final String title;
  final String itemName;
  final String originalPrice;
  final String discountedPrice;
  final String imageUrl;

  const DealCard({
    super.key,
    this.title = '  ',
    required this.itemName,
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
      child: TextButton(
      onPressed: () {
        // Define your onPressed action here
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
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
          height: 145,
          semanticLabel: 'Deal image for $itemName',
        ),
        Text(
          itemName,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (originalPrice.isNotEmpty)
            Text(
              originalPrice,
              style: TextStyle(
              fontSize: 12,
              decoration: discountedPrice.isNotEmpty
                ? TextDecoration.lineThrough
                : TextDecoration.none,
              ),
            ),
            const SizedBox(width: 7),
            Text(
            discountedPrice,
            style: TextStyle(
              color: originalPrice.isNotEmpty ? Colors.red : Colors.black,
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
      ),
    );
  }
}