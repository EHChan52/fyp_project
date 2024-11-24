import 'package:flutter/material.dart';
import 'widgets/profile_header.dart';
import 'widgets/recipe_card.dart';
import 'widgets/info_card.dart';
import 'widgets/navigation_bar.dart';

class VeggieDetailsScreen extends StatelessWidget {
  const VeggieDetailsScreen({Key? key}) : super(key: key);

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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProfileHeader(name: 'Mike', imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/774336cd65d0e92c7100b6ed97e664716b56c90de9b8dd8909b4565a88692cde?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc'),
                ],
              ),
              const SizedBox(height: 19),
              _buildTitleCard('Avocado'),
              const SizedBox(height: 19),
              _buildProductCard(),
              const SizedBox(height: 19),
              _buildTitleCard('Information by Veggie'),
              const SizedBox(height: 26),
              const InfoCard(),
              const SizedBox(height: 26),
              _buildPriceButton(context),
              const SizedBox(height: 7),
              const CustomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleCard(String title) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 390),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 36),
      decoration: BoxDecoration(
        color: const Color(0x7240E1CD),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildProductCard() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 380),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            blurRadius: 20,
            offset: Offset(8, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/e028287d921a04c7080bfd07103af19f8c7e490f5a180135e6adaf5e482a5034?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
              width: double.infinity,
              fit: BoxFit.contain,
              semanticLabel: 'Fresh Avocado Image',
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Fresh Avocado grown from local farm',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceButton(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 390),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 78),
      decoration: BoxDecoration(
      color: const Color(0x7240E1CD),
      borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
      onPressed: () {
        // Add your onPressed code here!
        final snackBar = SnackBar(
          content: Text('Avocado is added to your shopping cart'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text(
          'Buy for 200',
          style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: Colors.black,
          ),
        ),
        const SizedBox(width: 6),
        Image.asset(
          'assets/Token.png',
          width: 20,
          height: 20,
          semanticLabel: 'Currency Icon',
        ),
        ],
      ),
      ),
    );
  }
}