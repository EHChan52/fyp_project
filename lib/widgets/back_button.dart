import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.of(context).pop();
      },
      child: Container(
      decoration: BoxDecoration(
        color: const Color(0x7D40E1CD),
        border: Border.all(color: Colors.black.withOpacity(0.2)),
      ),
      child: const Row(
        children: [
        Padding(
          padding: EdgeInsets.only(left: 9),
          child: Text(
          'Back',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9),
          child: Icon(
          Icons.arrow_back_ios,
          size: 40,
          ),
        ),
        ],
      ),
      ),
    );
  }
}