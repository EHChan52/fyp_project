import 'package:flutter/material.dart';
import 'widgets/profile_info_item.dart';

class PIScreen extends StatelessWidget {
  const PIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF0F0F0),
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 56),
                ProfileInfoItem(
                  label: 'Name',
                  value: 'Mike',
                  onTap: () {
                    
                  },
                ),
                ProfileInfoItem(
                  label: 'Age',
                  value: '24',
                  onTap: () {

                  },
                ),
                ProfileInfoItem(
                  label: 'Gender',
                  value: 'Male',
                  onTap: () {

                  },
                ),
                ProfileInfoItem(
                  label: 'Height',
                  value: '180 cm',
                  onTap: () {

                  },
                ),
                ProfileInfoItem(
                  label: 'Weight',
                  value: '88.60 kg',
                  onTap: () {

                  },
                ),
                ProfileInfoItem(
                  label: 'Location',
                  value: 'Kowloon Tong',
                  onTap: () {

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      color: const Color(0x7340E1CD),
      padding: const EdgeInsets.fromLTRB(29, 33, 80, 33),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/c1097428056e519ac29c50d0a27531114f14d581d65626880cdd8178101e9c5a?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
                width: 40,
                height: 40,
                semanticLabel: 'Profile icon',
              ),
            ],
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/a047ce292ac2769033e355036671227e2cbd21f246a71c32570d4d4c57ab1013?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
            width: 85,
            height: 85,
            semanticLabel: 'User avatar',
          ),
          const SizedBox(height: 11),
          const Text(
            'username:123456',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            ),
          ),
        ],
      ),
    );
  }
}