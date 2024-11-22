import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ProfileHeader({
    Key? key,
    required this.imageUrl,
    required this.name,
  }) : super(key: key);

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
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              name,
              style: GoogleFonts.roboto(
                fontSize: 34,
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