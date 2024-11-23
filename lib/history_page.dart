import 'package:flutter/material.dart';
import 'widgets/transaction_card.dart';
import 'widgets/profile_header.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const ProfileHeader(
                name: "Mike",
                imageUrl: "https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 19),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0x7340E1CD),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 53),
                  child: const Text(
                    'Transaction History',
                    style: TextStyle(
                      fontFamily: 'Cormorant Garamond',
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(top: 35),
                  children: const [
                    TransactionCard(
                      image: "https://cdn.builder.io/api/v1/image/assets/TEMP/9126a9ec99adc8988d98f15656fc25068c8401e9b38036a103c0fdb25d13ce2e?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
                      title: "Broccoli",
                      date: "20/10 8:30PM",
                      amount: -150,
                    ),
                    SizedBox(height: 35),
                    TransactionCard(
                      image: "https://cdn.builder.io/api/v1/image/assets/TEMP/2f2132de5a33833146979b82aa81ba2d5e02cbe47b26369052721fea4faa4850?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
                      title: "Tuen Mun 2",
                      date: "18/10 7:30PM",
                      amount: -500,
                    ),
                    SizedBox(height: 35),
                    TransactionCard(
                      image: "https://cdn.builder.io/api/v1/image/assets/TEMP/813a7881a6ac52e2abb1d422836329b79efdd9519a0b7f2d749a79e6ae76c1c0?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc",
                      title: "18888 Coins",
                      date: "10/10 9:30PM",
                      amount: 18888,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}