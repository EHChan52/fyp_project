import 'package:flutter/material.dart';

class ProfileInfoItem extends StatelessWidget {
  final String label;
  final String value;
  final VoidCallback onTap;

  const ProfileInfoItem({
    super.key,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(19, 16, 0, 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Color(0x33000000)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
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
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color(0x80000000),
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(width: 12),
                Image.asset(
                  'assets/Forward.png',
                  width: 28,
                  height: 28,
                  semanticLabel: 'Edit icon',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}