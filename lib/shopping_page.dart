import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/search_bar.dart';
import '../widgets/deal_card.dart';
import '../widgets/navigation_bar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 480),
              margin: const EdgeInsets.symmetric(horizontal: 14),
              child: const Column(
                children: [
                  SizedBox(height: 61),
                  HeaderWidget(),
                  SizedBox(height: 14),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), 
                    child: SizedBox(
                      width: 380, 
                      height: 50, 
                      child: SearchBar1(),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DealCard(
                          itemName: 'Broccoli',
                          originalPrice: '200',
                          discountedPrice: '150',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/1614e0694ed3b01d6b6c6ed6328b2e71a89ddbd32d731a5a312f7c5a5bd68c3a?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: DealCard(
                          itemName: 'Asparagus',
                          originalPrice: '250',
                          discountedPrice: '180',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/05b16c653ba12c91c0cca9193663fbeed087c7d0362ddcfd149a6f2e98622ff5?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DealCard(
                          itemName: 'Carrots',
                          discountedPrice: '120',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/d8fbae8cc59746aed52eeb8576f283733f3f1bc5c371bde39941cc39c12664a8?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: DealCard(
                          itemName: 'Avocado',
                          discountedPrice: '200',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/1b7eab129f08996c2520dee8a1bc3f51255487563bb023ef9499ec830c9d3491?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: DealCard(
                          itemName: 'Blueberry',
                          discountedPrice: '190',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/1b7981b23b54de342aa88be6b36456b33740df8a6d8a7ac140b324c6a63b80f5?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: DealCard(
                          itemName: 'Red pepper',
                          discountedPrice: '150',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/e2d15d950cfe42fa7949751966ddb20059564ecc47e9c9dc4a65e151868a18e2?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100), // Add some space at the bottom
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