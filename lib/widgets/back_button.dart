import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0x7D40E1CD),
        border: Border.all(color: Colors.black.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 9),
            child: Text(
              'Back',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/e4dd8ce6da5da7c6c247745a1992eb5d24c64c006a57a78d4cd4d69b22558c11?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
            width: 48,
            height: 48,
            semanticLabel: 'Back button icon',
          ),
        ],
      ),
    );
  }
}