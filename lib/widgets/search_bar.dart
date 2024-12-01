import 'package:flutter/material.dart';

class SearchBar1 extends StatelessWidget {
  final String hint;
  final int icon;
  const SearchBar1({
    super.key,
    required this.hint,
    required this.icon,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black.withOpacity(0.3)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 11),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(

            padding: const EdgeInsets.only(right: 5), 
            child: SizedBox(
              width: 50, 
              height: 60, 
              child: IconButton(
                icon: Icon(icon == 1 ? Icons.search : Icons.send),
                iconSize: 20,
                padding: const EdgeInsets.only(bottom:2),
                onPressed: () {
                  
                },
                tooltip: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}