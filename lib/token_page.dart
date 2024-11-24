import 'package:flutter/material.dart';
import 'widgets/deal_card.dart';
import 'widgets/navigation_bar.dart';

class TokensScreen extends StatelessWidget {
  const TokensScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Stack(
        children: [
          SingleChildScrollView(
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
                    child: const Text(
                      'Tokens',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DealCard(
                        title: 'Best Deal !!!',
                        itemName: '18888 Coins',
                        originalPrice: '999',
                        discountedPrice: '648',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/e621e9b6a90527dec4a9737d95e4c5b8bd369aef316aaa482c4c339e8ce097cc?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      ),
                      DealCard(
                        title: 'Once a lifetime !!!',
                        itemName: '3000 Coins/Month',
                        originalPrice: '500',
                        discountedPrice: '350',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/b902992b0b957a819ba8b62c96d464c49880781e51123f732fe4a40959aec660?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DealCard(
                        itemName: '2000 Coins',
                        discountedPrice: '200',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/a2ac4ffca1d4b4c98a25dc6b934b23ef3038b069c26cab7cb4ec341bfe4181d7?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      ),
                      DealCard(
                        itemName: '1400 Coins',
                        discountedPrice: '120',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/0369b7ce4a850763133e619886fb74adc0c3f1dcf91e858f96f40de3cb80e4b9?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DealCard(
                        itemName: '800 Coins',
                        discountedPrice: '75',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/b6d737788b435298d0d5f7d63967d726a6d020e2798eaadcc94598d5b7d39085?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      ),
                      DealCard(
                        itemName: '200 Coins',
                        discountedPrice: '20',
                        imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/b69e1b33efba6ebcce34e625126eaf84a7db1194508dba60c4e28940e47414c1?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                      ),
                    ],
                  ),
                  const SizedBox(height: 120), // Add some space at the bottom
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomNavigationBar(),
          ),
        ],
      ),
    );
  }
}