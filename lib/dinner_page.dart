import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/event_card.dart';
import 'widgets/info_card.dart';
import 'widgets/navigation_bar.dart';

class DinnerEventScreen extends StatelessWidget {
  const DinnerEventScreen({Key? key}) : super(key: key);

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
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.topRight,
                    child: ProfileHeader(name: 'Mike', imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc'),
                    ),
                  const SizedBox(height: 19),
                  _buildSectionTitle('Dinner at Tuen Mun'),
                  const SizedBox(height: 19),
                  const EventCard(),
                  const SizedBox(height: 19),
                  _buildSectionTitle('Information'),
                  const SizedBox(height: 26),
                  const InfoCard(),
                  const SizedBox(height: 26),
                  _buildJoinSection(context),
                  const SizedBox(height: 100), // Add some space at the bottom
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

  Widget _buildSectionTitle(String title) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 390),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 49),
      decoration: BoxDecoration(
        color: const Color(0x7340E1CD),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildJoinSection(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 390),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 16),
      decoration: BoxDecoration(
      color: const Color(0x7340E1CD),
      borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
      onPressed: () {
        // Add your onPressed code here!
        final snackBar = const SnackBar(
          content: Text('You have joined the dinner successfully!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text(
          'Join for 1000',
          style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: Colors.black
          ),
        ),
        const SizedBox(width: 8),
        Image.asset(
          'assets/Token.png',
          width: 28,
          height: 28,
        ),
        ],
      ),
      ),
    );
  }
}