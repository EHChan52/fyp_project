import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0x4D000000),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 23,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 1; i <= 5; i++)
            Semantics(
              label: 'Navigation button $i',
              button: true,
              child: Image.network(
                'http://b.io/ext_${i + 4}-',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
              ),
            ),
        ],
      ),
    );
  }
}