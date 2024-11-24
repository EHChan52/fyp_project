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
                    Image.asset(
                      'assets/calendar.png',
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
              Image.asset(
                'assets/Token.png',
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