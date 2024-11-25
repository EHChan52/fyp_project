import 'package:flutter/material.dart';
import 'shopping_cart.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

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
            IconButton(
            icon: Image.asset(
              'assets/ShoppingCart.png',
              width: 32,
              height: 32,
              semanticLabel: 'Green Market Logo',
            ),
            onPressed: () {
              // Add your onPressed code here!
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Add your shopping cart widget here
                          ShoppingCartScreen(),
                          // Example: ShoppingCartWidget(),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            ),
        ],
      ),
    );
  }
}