import 'package:flutter/material.dart';
import 'widgets/search_bar.dart';
import 'widgets/section_header.dart';
import 'widgets/deal_card.dart';
import 'widgets/navigation_bar.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Community Screen',
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F0F0),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 480),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 62),
                  const SectionHeader(title: 'Community'),
                  const SizedBox(height: 13),
                  const SearchBar1(),
                  const SizedBox(height: 15),
                  const SectionHeader(title: 'Daily Deal'),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: DealCard(
                          title: 'Starts in 6 Hours!!!',
                          location: 'Tuen Mun 2',
                          originalPrice: '1000',
                          discountedPrice: '500',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/9be4c22c350f32693813bbf361a1b38f0702d540deb10adbca79d1a57b909b77?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: DealCard(
                          title: '25% Off!!!',
                          location: 'Mong Kok 4',
                          originalPrice: '1500',
                          discountedPrice: '1000',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/db55be97d2b410808f1855b48f835831f1cb98f07085b0b32a534fd9a8ee2ded?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  const SectionHeader(title: 'Recommended'),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: DealCard(
                          title: 'Vegetarian',
                          location: 'ShaTin 6',
                          originalPrice: '1200',
                          discountedPrice: '1500',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/10dc49e5acdb7e6106ee59b1a3a97ff94af3d90ce9cb2ebb5cb7791fd3364d50?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: DealCard(
                          location: 'Tai Po 5',
                          discountedPrice: '1250',
                          imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/e8a35894acd5e786192f88cedd3cedc0a4202517f1478af1edf8a179ba022aca?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 85),
                  const CustomNavigationBar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}