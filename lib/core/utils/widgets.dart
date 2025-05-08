import 'package:flutter/material.dart';

const SizedBox kheight5 = SizedBox(height: 5);
const SizedBox kheight = SizedBox(height: 10);

const SizedBox kheight20 = SizedBox(height: 20);

const SizedBox kwidth5 = SizedBox(width: 5);
const SizedBox kwidth = SizedBox(width: 10);

const SizedBox kwidth20 = SizedBox(width: 20);

class CustomSearchField extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const CustomSearchField({Key? Key}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        border: InputBorder.none,
        suffixIcon: Icon(Icons.search, color: Colors.green),
        labelText: 'Search for products/stores',
      ),
    );
  }
}

class DiscountIconCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? offerLabel;
  final bool showLabel;
  final double height;
  final double width;
  final Color backgroundColor;
  final double borderRadius;

  const DiscountIconCard({
    Key? key,
    required this.imagePath,
    required this.title,
    this.offerLabel = '10% off',
    this.showLabel = true,
    this.height = 60,
    this.width = 60,
    this.backgroundColor = Colors.white,
    this.borderRadius = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 5,
                color: Colors.grey,
                spreadRadius: -1,
              ),
            ],
          ),
          child: Stack(
            children: [
              if (showLabel)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 18,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.purple[400],
                    ),
                    child: Center(
                      child: Text(
                        offerLabel!,
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                  ),
                ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(imagePath),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
