import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0x7340E1CD),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              'Green Market',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                fontFamily: 'Cormorant Garamond',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.asset(
            'assets/ShoppingCart.png',
            width: 32,
            height: 32,
            semanticLabel: 'Green Market Logo',
          ),
        ],
      ),
    );
  }
}