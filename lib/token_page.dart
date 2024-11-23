import 'package:flutter/material.dart';
import 'widgets/deal_card.dart';
import 'widgets/navigation_bar.dart';

class TokensScreen extends StatelessWidget {
  const TokensScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 62),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    decoration: BoxDecoration(
                      color: const Color(0x7D40E1CD),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          'assets/back_icon.png',
                          width: 48,
                          height: 48,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 70),
                decoration: BoxDecoration(
                  color: const Color(0x7340E1CD),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Tokens',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DealCard(
                    title: 'Best Deal !!!',
                    location: '18888 Coins',
                    originalPrice: '999',
                    discountedPrice: '648',
                    imageUrl: 'assets/648token.jpeg',
                  ),
                  DealCard(
                    title: 'Once a lifetime !!!',
                    location: '3000 Coins/Month',
                    originalPrice: '500',
                    discountedPrice: '350',
                    imageUrl: 'assets/lifetime_image.png',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DealCard(
                    location: '2000 Coins',
                    discountedPrice: '200',
                    imageUrl: 'assets/token_image_1.png',
                  ),
                  DealCard(
                    location: '1400 Coins',
                    discountedPrice: '120',
                    imageUrl: 'assets/token_image_2.png',
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DealCard(
                    location: '800 Coins',
                    discountedPrice: '75',
                    imageUrl: 'assets/token_image_3.png',
                  ),
                  DealCard(
                    location: '200 Coins',
                    discountedPrice: '20',
                    imageUrl: 'assets/token_image_4.png',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const CustomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}