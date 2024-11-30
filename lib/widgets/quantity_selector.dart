import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 0;

  void _decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MergeSemantics(
          child: IconButton(
            icon: const Icon(
              Icons.remove,
              size: 14,
            ),
            onPressed: _decrementQuantity,
            tooltip: 'Decrease quantity',
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 1),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.white,
          ),
          child: Text(
            quantity.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'Roboto',
            ),
            semanticsLabel: 'Quantity: $quantity',
          ),
        ),
        MergeSemantics(
          child: IconButton(
            icon: const Icon(
              Icons.add,
              size: 14,
            ),
            onPressed: _incrementQuantity,
            tooltip: 'Increase quantity',
          ),
        ),
      ],
    );
  }
}