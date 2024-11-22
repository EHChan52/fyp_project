import 'package:flutter/material.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black.withOpacity(0.3)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 11),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/09b9e9fe92b751dfdca7b22d3e906e571f3d4bad7d782e30211b6d5bbf2de6b3?placeholderIfAbsent=true&apiKey=87d0bb48475c40afad0cba455048b9fc',
            width: 23,
            height: 23,
            semanticLabel: 'Search icon',
          ),
        ],
      ),
    );
  }
}