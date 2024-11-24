import 'package:flutter/material.dart';
import 'package:fyp_project/dinner_page.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1({super.key});

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
            IconButton(
            icon: const Icon(Icons.search),
            iconSize: 23,
            onPressed: () {
              // Add your search action here
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DinnerEventScreen()),
                );
            },
            tooltip: 'Search',
            ),
        ],
      ),
    );
  }
}