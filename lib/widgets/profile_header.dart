import 'package:flutter/material.dart';


class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ProfileHeader({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 20.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            Semantics(
              label: 'Profile picture of $name',
              child: ClipOval(
                child: Image.network(
                  imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              semanticsLabel: 'User name: $name',
            ),
          ],
        ),
      ),
    );
  }
}