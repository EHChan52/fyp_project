import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

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
            const Padding(
              padding: EdgeInsets.fromLTRB(11, 8, 55, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                        Icon(
                        Icons.calendar_today,
                        size: 24,
                        ),
                      SizedBox(width: 4),
                      Text(
                        '20/10 8:30PM',
                        style: TextStyle(fontSize:20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                        Icon(
                        Icons.person,
                        size: 24,
                        ),
                      SizedBox(width: 7),
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