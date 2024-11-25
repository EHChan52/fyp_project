import 'package:flutter/material.dart';
import 'quantity_selector.dart';

class CartItem extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final int price;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.itemName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '$itemName cart item',
      child: Container(
      padding: const EdgeInsets.fromLTRB(7, 15, 49, 15),
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
      child: Row(
        children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
          imagePath,
          width: 85,
          height: 78,
          fit: BoxFit.contain,
          semanticLabel: '$itemName image',
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
            children: [
              Text(
              itemName,
              style: const TextStyle(
                fontSize: 24,
                fontFamily: 'Roboto',
              ),
              ),
              const SizedBox(width: 5),
              
            ],
            ),
            const SizedBox(height: 20),
            const QuantitySelector(),
          ],
          ),
        ),
        ],
      ),
      ),
    );
  }
}