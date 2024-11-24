import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String value;
  final String iconUrl;

  const ListItem({
    super.key,
    required this.title,
    required this.value,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(70, 16, 8, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            ),
          ),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(width: 12),
              Image.asset(
                iconUrl,
                width: 28,
                height: 28,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}