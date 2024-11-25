import 'package:flutter/material.dart';

import 'cart_item_card.dart';
import 'action_button.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Shopping Cart Screen',
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 22),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 3),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(64, 225, 205, 0.45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Shopping \nCart',
                style: TextStyle(
                  fontFamily: 'Cormorant Garamond',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 22),
            const CartItem(
              imagePath: 'https://cdn.builder.io/api/v1/image/assets/TEMP/2d9132df71f09342edae15e5f42427de22f1cc7ee7e89e4b776cfe893dd5b278?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
              itemName: 'Broccoli',
              price: 150,
            ),
            const SizedBox(height: 22),
            const CartItem(
              imagePath: 'https://cdn.builder.io/api/v1/image/assets/TEMP/f2c6623faf1ba339112a21d622cfa4e49877da4b8f7174d389fdd56a389977d2?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
              itemName: 'Asparagus',
              price: 150,
            ),
            const SizedBox(height: 22),
            Container(
              height: 50, // Set a fixed height for the container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ActionButton(
                      text: 'Checkout',
                      backgroundColor: const Color.fromRGBO(64, 225, 205, 0.45),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 17),
                  Expanded(
                    child: ActionButton(
                      text: 'Clear',
                      backgroundColor: const Color.fromRGBO(225, 69, 64, 0.45),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}