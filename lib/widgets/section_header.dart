import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 70),
      decoration: BoxDecoration(
        color: const Color(0x7340E1CD),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.cormorantGaramond(
          textStyle: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}