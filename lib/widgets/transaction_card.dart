import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final int amount;

  const TransactionCard({
    super.key,
    required this.image,
    required this.title,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.fromLTRB(7, 14, 42, 14),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              image,
              width: 85,
              height: 93,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/66c5dc4cd500c7257ea029b173c8432cb5c4e37af6e59cf0df3cfe9a64207cbd?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      width: 21,
                      height: 21,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      date,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/e8af101cabb71c419822ea0015b6ef0c7b2cba9421b23c59cadf7f131460ae34?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                width: 28,
                height: 28,
              ),
              Text(
                '${amount > 0 ? '+' : ''}$amount',
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}